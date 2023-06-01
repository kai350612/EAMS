package jmu.dpj.bmms.controller;

import jmu.dpj.bmms.pojo.User;
import jmu.dpj.bmms.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    //注册界面
    @GetMapping ("/register")
    public String showRegister() {
        return "register";
    }

    //注册进程
    @PostMapping( "/register")
    public String processRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String password = req.getParameter("password");

        boolean flag = userService.checkAccount(account);
        if (flag) {
            req.setAttribute("msg", "该账号已存在!");
            return "register";
        } else {
            User user = new User();
            user.setU_account(account);
            user.setU_password(password);
            flag = userService.register(user);

            if (flag) {
                req.setAttribute("msg", "注册成功");
                return "login";
            } else {
                req.setAttribute("msg", "注册失败");
                return "register";
            }
        }
    }

    //登录界面
    @GetMapping("/login")
    public String showLogin() {
        return "login";
    }

    //登录进程
    @PostMapping("/login")
    public String processLogin(HttpServletRequest req, HttpServletResponse resp){
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        boolean flag = userService.login(account,password);
        if(flag){
            return "main";
        }else{
            req.setAttribute("msg", "账号或密码错误，请重新输入!");
            return "login";
        }
    }

//    // 修改密码页面
//    @GetMapping("/modifyPwd")
//    public String showChangePassword() {
//        return "modifyPwd";
//    }
//
//    // 修改密码进程
//    @PostMapping("/modifyPwd")
//    public String processChangePassword(HttpServletRequest req, HttpServletResponse resp) {
//        User currentUser = (User) req.getSession().getAttribute("currentUser");
//        String newPassword = req.getParameter("newPassword");
//        boolean result = userService.changePassword(currentUser.getU_account(), currentUser.getU_password(), newPassword);
//        if (result) {
//            req.setAttribute("msg", "密码修改成功，请重新登录");
//            return "login";
//        } else {
//            req.setAttribute("msg", "旧密码错误，密码修改失败");
//            return "modifyPwd";
//        }
//    }

    //主界面
    @GetMapping("/main")
    public String showMain() {
        return "login";
    }

    //退出
    @GetMapping ("/logout")
    public String returnLogin(HttpServletRequest req) {
        req.getSession().invalidate();
        return "login";
    }
}
