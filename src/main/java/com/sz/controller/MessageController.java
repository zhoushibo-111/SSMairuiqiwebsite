package com.sz.controller;

import com.sz.pojo.Message;
import com.sz.pojo.User;
import com.sz.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    MessageService messageService;

    /**
     * 留言板查询
     * @param model
     * @return
     */
    @RequestMapping("/find")
    public String findAll(Model model){
        model.addAttribute("map", messageService.queryAllMessageDate());
        return "Message";
    }


    /**
     * 前台写留言板
     * @param name
     * @param dh
     * @param email
     * @param nr
     * @param model
     * @return
     */
    @RequestMapping("/insertdata")
    public String insertData(String name, String dh, String email, String nr,Model model){
        Message message = new Message();
        message.setDh(dh);
        message.setEmail(email);
        message.setName(name);
        message.setNr(nr);
        message.setTime(new Date());
        boolean flag = messageService.insertData(message);
        model.addAttribute("flag", flag);
        return "redirect:/link/findBefore";
    }
    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/delMessage")
    public String delMessage(Integer id, HttpSession session){
        messageService.delMessage(id);
        session.setAttribute("count", messageService.count());
        return "redirect:/message/find";
    }
    /**
     * 点击查看，查看单一留言
     */
    @RequestMapping("/messageLook")
    public String findLookById(Integer id, Model model){
        model.addAttribute("map", messageService.queryMessageDate(id));
        return "messageLook";
    }
}
