package jmu.dpj.bmms.service.impl;

import jmu.dpj.bmms.mapper.UserMapper;
import jmu.dpj.bmms.pojo.User;
import jmu.dpj.bmms.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    // 判断账号是否存在
    public boolean checkAccount(String account) {
        return userMapper.selectUserByAccount(account);
    }

    @Override
    public boolean register(User user) {
        // 执行插入操作
        int result = userMapper.insertUser(user.getU_account(), user.getU_password());

        // 如果插入成功，则返回 true，否则返回 false
        return result > 0;
    }

    @Override
    public boolean login(String account, String password) {
        return userMapper.selectUserByAccountAndPassword(account, password);
    }

//    @Override
//    public boolean changePassword(String account, String oldPassword, String newPassword) {
//        return userMapper.updateUserPassword(account, oldPassword, newPassword);
//    }
}
