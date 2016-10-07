package com.renren.biji.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/10/7 0007.
 */
public class BeanUtils {
    /**
     * 把源对象转换成目标对象，并实现同名属性数据复制
     * @param source		原对象
     * @param targetClass	目的类
     * @return
     * @throws Exception
     */
    public static <A,B> B convert(A source, Class<B> targetClass) throws Exception{
        try {
            B target = targetClass.newInstance();
            org.springframework.beans.BeanUtils.copyProperties(target, source);
            return target;
        } catch (Exception e) {
            throw new Exception("cannot convert to " + targetClass.getName());
        }
    }

    /**
     * 把源对象转换成目标对象，并实现同名属性数据复制
     * @param sourceList	原对象列表
     * @param targetClass	目的类
     * @return
     * @throws Exception
     */
    public static <A,B> List<B> convert(List<A> sourceList, Class<B> targetClass) throws Exception{
        if(sourceList == null)
            return null;

        List<B> targetList = new ArrayList<B>();
        for(A source:sourceList){
            try{
                B target = targetClass.newInstance();
                org.springframework.beans.BeanUtils.copyProperties(target, source);
                targetList.add(target);
            } catch (Exception e) {
                throw new Exception("cannot convert to " + targetClass.getName());
            }
        }
        return targetList;
    }
}
