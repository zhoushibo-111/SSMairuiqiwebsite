package com.sz.controller;

import com.sz.pojo.User;
import com.sz.service.DevUserService;
import com.sz.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    DevUserService devUserService;

    @RequestMapping("/find")
    public String findAll(Integer id, Model model) {
        User user = userService.queryDateUserById(id);
        if (user.getRole() == 1){
            model.addAttribute("map", userService.queryUserDate());
            return "behindindex";
        }else{
            model.addAttribute("errMsg","权限不足");
            return "houtaiindex";
        }

    }


    @RequestMapping("/addUser")
    @ResponseBody
    public String addUser(String username,String password){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
       userService.addUser(user);
        return "behindindex";
    }
    /**
     * 修改前查询操作
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/findbyid")
    public String findById(Integer id, Model model, HttpSession session){
        User user = devUserService.login((User) session.getAttribute("user"));
        model.addAttribute("map", userService.queryDateUserById(id));
        if (user.getRole() == 1){
            return "Userupdate";
        }else{
            model.addAttribute("errMsg","权限不足");
           return "houtaiindex";
        }

    }


    @RequestMapping("/updataUser")
    public String updateUserById(Integer id, String username, String password, Integer loginfrequency) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setLoginfrequency(loginfrequency);
        user.setId(id);
        userService.updUser(user);
        return "redirect:/user/find?id="+user.getId();
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/delUser")
    public String delUser(Integer id, HttpSession session){
        userService.delUser(id);
        User user  = (User) session.getAttribute("user");
        return "redirect:/user/find?id="+user.getId();
    }


}
