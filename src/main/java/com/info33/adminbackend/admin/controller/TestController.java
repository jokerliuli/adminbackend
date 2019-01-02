//package com.info33.adminbackend.admin.controller;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
///**
// * @author JokerLiu
// * @create 2018-12-29 17:12
// * @desc 实现无限层级递归map（list可以更简单，给实体类加属性chilrdrenlist）
// **/
//public class TestController {
//
//
//    public Object queryDiseaseDisCode() {
////        List<Map<String,Object>> treeList  =new ArrayList<Map<String,Object>>();
////        //查询第一级分类，即：最顶层节点
////       List<Disease> doseaseList = diseaseDao.selectDisCode();
////        for (int i = 0; i < doseaseList.size(); i++) {
////            Map<String, Object> map = null;
////            Disease disease = (Disease) doseaseList.get(i);
////            if (disease.getParentId().equals(disease.getId)) {
////                map = new HashMap<String, Object>();
////                //这里必须要将对象疾病的编号disCode、disChineseName转换成tree在页面的显示形式id、text
////                //tree,不是数据表格，没有在页面通过columns转换数据的属性
////                map.put("value", disease.getId());         //id
////                map.put("label",disease.getText());      //疾病名
////                map.put("children", createTreeChildren(doseaseList,disease.getId));
////            }
////            if (map != null)
////                treeList.add(map);
////        }
////        return treeList;
////    }
//    /**
//     * 递归设置疾病树
//     * @param list
//     * @param fid
//     * @return
//     */
//    private List<Map<String, Object>> createTreeChildren(List<Disease> list, String fid) {
//        Map<String, Object> pdata = new HashMap<String, Object>();
//        pdata.put("id", fid);
//        //根据父节点Id查询该父节点下所有的子节点
//       List<Disease> childrenList = diseaseDao.selectDisChildCode(pdata);
//        List<Map<String, Object>> childList = new ArrayList<Map<String, Object>>();
//        for (int j = 0; j < childrenList.size(); j++) {
//            Map<String, Object> map = null;
//            Disease treeChild = (Disease) childrenList.get(j);
//            if (treeChild.getParentId().equals(fid)) {
//                map = new HashMap<String, Object>();
//                //这里必须要将对象角色的id、name转换成tree在页面的显示形式id、text
//                //tree,不是数据表格，没有在页面通过columns转换数据的属性
//                map.put("value", treeChild.getId());         //id
//                map.put("label",treeChild.getText());      //疾病名
//                map.put("children", createTreeChildren(childrenList, treeChild.getId()));
//            }
//            if (map != null)
//                childList.add(map);
//        }
//        return childList;
//    }
//
//}
