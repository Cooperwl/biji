package com.renren.biji.result;

import java.io.Serializable;

/**
 * 
 * 方法执行后返回的结果对象
 */
public class BaseResult implements Serializable {
    private static final long serialVersionUID = -5944642298461296310L;
    
    private boolean success;    //成功与否， true 成功， false失败
    
    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
