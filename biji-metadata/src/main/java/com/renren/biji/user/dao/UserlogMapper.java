package com.renren.biji.user.dao;

import com.renren.biji.user.entity.Userlog;
import com.renren.biji.user.entity.UserlogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserlogMapper {
    int countByExample(UserlogExample example);

    int deleteByExample(UserlogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Userlog record);

    int insertSelective(Userlog record);

    List<Userlog> selectByExampleWithBLOBs(UserlogExample example);

    List<Userlog> selectByExample(UserlogExample example);

    Userlog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Userlog record, @Param("example") UserlogExample example);

    int updateByExampleWithBLOBs(@Param("record") Userlog record, @Param("example") UserlogExample example);

    int updateByExample(@Param("record") Userlog record, @Param("example") UserlogExample example);

    int updateByPrimaryKeySelective(Userlog record);

    int updateByPrimaryKeyWithBLOBs(Userlog record);

    int updateByPrimaryKey(Userlog record);
}