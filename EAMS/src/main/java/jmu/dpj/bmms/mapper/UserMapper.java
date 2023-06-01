package jmu.dpj.bmms.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {
    /*根据账号查找用户*/
    @Select("select count(*) from user where u_account = #{acc}")
    boolean selectUserByAccount(@Param("acc") String account);

    /*新增一条用户记录*/
    @Insert("insert into user(u_account, u_password) values(#{acc}, #{pwd})")
    int insertUser(@Param("acc") String account, @Param("pwd")String password);

    /*可以根据账号和密码查找用户*/
    @Select("select count(*) from user where u_account = #{acc} and u_password = #{pwd}")
    boolean selectUserByAccountAndPassword(@Param("acc") String account, @Param("pwd")String password);

//    /*修改用户密码*/
//    @Update("update user set u_password = #{new} WHERE u_account = #{acc} and u_password = #{old}")
//    boolean updateUserPassword(@Param("acc") String account, @Param("old")String oldPassword, @Param("new")String newPassword);
}
