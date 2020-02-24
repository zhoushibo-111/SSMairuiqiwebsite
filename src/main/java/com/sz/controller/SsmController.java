package com.sz.controller;


import com.sz.pojo.NewLink;
import com.sz.service.SsmService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/link")
public class SsmController {
    /**
     *链接控制层
     */

    @Autowired
    SsmService ssmService;

    @RequestMapping("/find")
    public String findAll(Model model){
        model.addAttribute("map", ssmService.queryAllDate());
        return "link";
    }

    /**
     * 修改前查询操作
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/findbyid")
    public String findById(Integer id, Model model){
        model.addAttribute("map", ssmService.queryDateById(id));
        return "linkupdate";
    }

    //修改操作
    @RequestMapping("/updLink")
    public String updUserById(String text, String link, Integer id){
        NewLink newLink = new NewLink();
        newLink.setText(text);
        newLink.setLink(link);
        newLink.setId(id);
        ssmService.updLink(newLink);
        return "linkupdate";
    }
    @RequestMapping("/findBefore")
    public String findLink(Model model){
        model.addAttribute("map", ssmService.queryAllDate());
        return "index";
    }

}
