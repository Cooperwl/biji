package com.renren.biji.user.service;

import com.renren.biji.user.dao.UserMapper;
import com.renren.biji.user.dto.UserDTO;
import com.renren.biji.user.entity.User;
import com.renren.biji.utils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/10/7 0007.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserDTO getUserInfo(Integer userId) {
        User user = userMapper.selectByPrimaryKey(userId);
        try {
            UserDTO userDTO = BeanUtils.convert(user, UserDTO.class);
            return userDTO;
        } catch (Exception e) {
            return null;
        }
    }
}
