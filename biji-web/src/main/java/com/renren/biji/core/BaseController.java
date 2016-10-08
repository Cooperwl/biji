/**
 * @Title:  BaseController.java
 * @Copyright (C) 2014-2015 by ywx.co.,ltd.All Rights Reserved.
 *  YWX CONFIDENTIAL AND TRADE SECRET
 * @author:
 * @data:
 */
package com.renren.biji.core;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.renren.biji.result.Result;
import com.renren.biji.result.StatusConstant;
import com.renren.biji.user.AppContext;
import com.renren.biji.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

public class BaseController {

	private Logger logger = LoggerFactory.getLogger("method time logs");

	public HttpServletRequest getRequest() {
		return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
	}

	public HttpServletResponse getResponse() {
		return  ((ServletWebRequest)RequestContextHolder.getRequestAttributes()).getResponse();
	}

	public HttpSession getSession(){
		return getRequest().getSession();
	}

	/**
	 * @Description: 获取request中的参数，构建map
	 * @param request
	 * @return
	 * @throws:
	 * @author: WangLiang
	 * @update:[2015年1月29日 下午4:51:19] WangLiang 变更描述
	 */
	public Map<String, String> getAllRequestParam(final HttpServletRequest request) {
		Map<String, String> res = new HashMap<String, String>();
		Enumeration<?> temp = request.getParameterNames();
		if (null != temp) {
			while (temp.hasMoreElements()) {
				String en = (String) temp.nextElement();
				String value = request.getParameter(en);
				//在报文上送时，如果字段的值为空，则不上送<下面的处理为在获取所有参数数据时，判断若值为空，则删除这个字段>
				if (null == value || "".equals(value)) {
					continue;
				}
				logger.info("key:{},value:{}",en,value);
				res.put(en, value);
			}
		}
		return res;
	}

}
