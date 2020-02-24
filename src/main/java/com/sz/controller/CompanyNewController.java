package com.sz.controller;

import com.sz.pojo.CNew;
import com.sz.pojo.NewLink;
import com.sz.service.CompanyNewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.PublicKey;
import java.util.Date;

@Controller
@RequestMapping("/companyNew")
public class CompanyNewController {




    @Autowired
    CompanyNewService companyNewService;
    @RequestMapping("/find")
    public String findAll(Model model){

        model.addAttribute("map", companyNewService.queryCNewDate());
        return "forms";
    }
    /**
     * 修改前查询操作
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/findbyid")
    public String findNewById(Integer id, Model model){
        model.addAttribute("map", companyNewService.queryDateById(id));
        return "companyJjUpdate";
    }
    /**
     * 修改操作
     * @return
     */
    @RequestMapping("/updJj")
    public String updUserById(String bt, String newnr,Integer id){
        CNew cNew = new CNew();
        cNew.setBt(bt);
        cNew.setNewnr(newnr);
        cNew.setId(id);
        companyNewService.updCNew(cNew);
        return "redirect:/companyNew/find?id="+cNew.getId();
    }


    /**
     * 前台显示
     * @param model
     * @return
     */
    @RequestMapping("/pageFind")
    public String pageFind(Model model){
            model.addAttribute("map", companyNewService.queryCNewDate());
            return "company";

    }
}
