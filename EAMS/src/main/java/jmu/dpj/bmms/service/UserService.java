package jmu.dpj.bmms.service;

import jmu.dpj.bmms.pojo.User;

public interface UserService {
    //判断账号是否存在
    boolean checkAccount(String account);

    //注册
    boolean register(User user);

    //登录
    boolean login(String account, String password);

//    //修改密码
//    boolean changePassword(String account, String oldPassword, String newPassword);
}
