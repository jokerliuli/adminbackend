package com.info33.adminbackend.admin.service.impl;

import com.info33.adminbackend.admin.entity.Information;
import com.info33.adminbackend.admin.mapper.InformationMapper;
import com.info33.adminbackend.admin.service.IInformationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 资讯表 服务实现类
 * </p>
 *
 * @author alex
 * @since 2018-12-12
 */
@Service
public class InformationServiceImpl extends ServiceImpl<InformationMapper, Information> implements IInformationService {

}
