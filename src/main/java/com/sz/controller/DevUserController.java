package com.sz.controller;

import com.sz.pojo.User;
import com.sz.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 登录控制层
 */
@Controller
@RequestMapping("/dev")
public class DevUserController {

    @Autowired
    private DevUserService devUserService;




    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(String username, String password, Model model, HttpSession session){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user = devUserService.login(user);

        if (user != null){
            //登录成功
            Integer loginfrequency = user.getLoginfrequency() + 1;
            user.setLoginfrequency(loginfrequency);
            boolean flag = devUserService.updateLoginfrequency(user);
            int count = devUserService.count();
               if (flag){
                   session.setAttribute("count", count);
                   session.setAttribute("user",user);
                   model.addAttribute("devUser", user);
                   return "houtaiindex";
               }
            model.addAttribute("errMsg","操作失误");//对应上方显示次数，登录人，留言数量
            return "login";
        }else{
            //登录失败
            model.addAttribute("errMsg","用户名或密码错误");//对应密码
            return "login";
        }
    }


}
