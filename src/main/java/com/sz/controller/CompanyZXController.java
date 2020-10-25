package com.sz.controller;

import com.sz.pojo.CNew;
import com.sz.pojo.CompanyZX;
import com.sz.pojo.User;
import com.sz.service.CompanyZXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping("/gszixun")
public class CompanyZXController {
    @Autowired
    CompanyZXService companyZXService;

    @RequestMapping("/find")
    public String findAll(Model model, HttpServletRequest request){
        //获取session
        HttpSession  session = request.getSession();

        if(session.getAttribute("user")==null){
            model.addAttribute("map",null);
            return "login";
        }
       model.addAttribute("map",companyZXService.queryCXZDate());

        return "CompanyZX";
    }
    /**
     * 添加公司咨询
     */
    @RequestMapping("/addZX")
    @ResponseBody
    public String addUser(String title, String zxNr,Date zxdata) {
        CompanyZX companyZX = new CompanyZX();
        companyZX.setTitle(title);
        companyZX.setZxNr(zxNr);
        companyZX.setZxdata(zxdata);
        companyZXService.addZX(companyZX);
        return "CompanyZX";
    }
    /**
     *
     */
    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
    /**
     * 修改前查询操作
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/findbyid")
    public String findNewById(Integer id, Model model){
        model.addAttribute("map", companyZXService.queryDateById(id));
        return "CompanyZXupdate";
    }
    /**
     * 修改操作
     * @return
     */

    @RequestMapping("/updZX")
    public String updUserById(String title, String zxNr,Date zxdata,Integer id){
        CompanyZX companyZX = new CompanyZX();
        companyZX.setTitle(title);
        companyZX.setZxNr(zxNr);
        companyZX.setZxdata(zxdata);
        companyZX.setId(id);
        companyZXService.updZX(companyZX);
        return "redirect:/companyZX/find?id="+companyZX.getId();
    }
    /**
     * 点击查看，查看单一资讯
     */
    @RequestMapping("/companyLook")
    public String findLookById(Integer id, Model model){
        model.addAttribute("map", companyZXService.queryDateById(id));
        return "companyZXLook";
    }
    /**
     * 删除产品
     */
    @RequestMapping("/delZX")
    public String delZX(Integer id , HttpSession session){
        companyZXService.delZX(id);
        return "redirect:/gszixun/find";
    }
    /**
     * 前台页面资讯展示
     */
    @RequestMapping("/findBefore")
    public String findZX(Model model){
        model.addAttribute("companyList",companyZXService.queryAllZX());

        return "product-new";
    }



}



