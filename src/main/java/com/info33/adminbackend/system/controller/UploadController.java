package com.info33.adminbackend.system.controller;

import com.info33.adminbackend.system.entity.Result;
import com.info33.adminbackend.system.entity.SysPictureManage;
import com.info33.adminbackend.system.enums.ResultStatusCode;
import com.info33.adminbackend.system.service.ISysPictureManageService;
import com.info33.adminbackend.system.utils.FileSize;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.region.Region;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * @author JokerLiu
 * @create 2018-12-29 10:36
 * @desc 上传到腾讯云存储对象
 **/
@RestController
@RequestMapping(value = "admin/upload")
public class UploadController {
    @Resource
    private ISysPictureManageService iSysPictureManageService;

    @Value("${tengxun.accessKey}")
    private String accessKey;
    @Value("${tengxun.secretKey}")
    private String secretKey;
    @Value("${tengxun.bucket}")
    private String bucket;
    @Value("${tengxun.bucketName}")
    private String bucketName;
    @Value("${tengxun.path}")
    private String path;
    @Value("${tengxun.qianzhui}")
    private String qianzhui;

    /**
     * 上传到腾讯云服务器
     *
     * @return url
     */
    @PostMapping("/tengxun")
    public Result upload(@RequestParam(value = "file") MultipartFile file) {
        if (file == null) {
            return new Result(ResultStatusCode.UPLOAD_ERROR,"文件为空");
//            return new UploadMsg(0, "文件为空", null);
        }
        String oldFileName = file.getOriginalFilename();
        String bName = oldFileName.substring(0,oldFileName.lastIndexOf("."));
        String eName = oldFileName.substring(oldFileName.lastIndexOf("."));
        String timestamp = String.valueOf(System.currentTimeMillis());
        String newFileName = bName+"-"+timestamp+ eName;

        // 1 初始化用户身份信息(secretId, secretKey)
        COSCredentials cred = new BasicCOSCredentials(accessKey, secretKey);
        // 2 设置bucket的区域, COS地域的简称请参照 https://cloud.tencent.com/document/product/436/6224
        ClientConfig clientConfig = new ClientConfig(new Region(bucket));
        // 3 生成cos客户端
        COSClient cosclient = new COSClient(cred, clientConfig);
        // bucket的命名规则为{name}-{appid} ，此处填写的存储桶名称必须为此格式
        String bucketName = this.bucketName;

        // 简单文件上传, 最大支持 5 GB, 适用于小文件上传, 建议 20 M 以下的文件使用该接口
        // 大文件上传请参照 API 文档高级 API 上传
        File localFile;
        try {
            localFile = File.createTempFile("temp", null);
            file.transferTo(localFile);
            // 指定要上传到 COS 上的路径
            String key = "/" + this.qianzhui + "/information/" + newFileName;
            PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, key, localFile);
            PutObjectResult putObjectResult = cosclient.putObject(putObjectRequest);

            //存入数据库作为图片管理
            BufferedImage sourceImg =ImageIO.read(new FileInputStream(localFile));
            SysPictureManage sysPictureManage = new SysPictureManage();
            sysPictureManage.setPictureName(newFileName);
            sysPictureManage.setPictureSize(FileSize.getPrintSize(file.getSize()));
            sysPictureManage.setPictureKey(key);
            sysPictureManage.setPictureUrl(this.path + putObjectRequest.getKey());
            sysPictureManage.setPictureDimension(sourceImg.getWidth() + "*" + sourceImg.getHeight());
            iSysPictureManageService.save(sysPictureManage);

            return new Result(ResultStatusCode.OK,this.path + putObjectRequest.getKey());
//            return new UploadMsg(1, "上传成功", this.path + putObjectRequest.getKey());
        } catch (IOException e) {
            return new Result(ResultStatusCode.UPLOAD_ERROR,e.getMessage());
//            return new UploadMsg(-1, e.getMessage(), null);
        } finally {
            // 关闭客户端(关闭后台线程)
            cosclient.shutdown();
        }
    }
}