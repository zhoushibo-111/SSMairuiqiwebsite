package com.sz.controller;

import com.sz.pojo.Product;
import com.sz.service.ProductService;
import com.sz.util.Onloadimg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/product")
public class ProductController {
    /**
     * 产品控制层
     */
    @Autowired
    ProductService productService;

    @RequestMapping("/find")
    public String findAll(Model model){
        model.addAttribute("map", productService.queryProductDate());
        return "producttable";
    }



    /**
     * 添加产品
     * @param ppname
     * @param name
     * @param cd
     * @param ml
     * @param
     * @return
     */
    @RequestMapping("/addProduct")
    public String addProduct(String ppname,String name,Integer categoryId,String cd,String ml,MultipartFile file){
        Product product = new Product();
        product.setPpname(ppname);
        product.setName(name);
        product.setCategoryId(categoryId);
        product.setCD(cd);
        product.setML(ml);
        product.setProductimg(Onloadimg.upImg(file));//工具类方法
        productService.addProduct(product);
        return "redirect:/product/find";
    }
    /**
     * 修改前查询操作
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/findbyid")
    public String findById(Integer id, Model model){
        model.addAttribute("map", productService.queryDateProductById(id));
        return "productupdate";
    }

    //修改操作
    @RequestMapping("/updProduct")
    public String updProductById(Integer id, String ppname, String name, Integer categoryId, String cd, String ml, MultipartFile file){

        Product product = new Product();
        product.setPpname(ppname);
        product.setName(name);
        product.setCategoryId(categoryId);
        product.setCD(cd);
        product.setML(ml);
        product.setProductimg(Onloadimg.upImg(file));
        product.setId(id);
        productService.updProduct(product);
        return "redirect:/product/find?id="+product.getId();
    }
    /**
     * 删除产品
     */
    @RequestMapping("/delProduct")
    public String delProduct(Integer id ,HttpSession session){
        productService.delProduct(id);
        return "redirect:/product/find";
    }

    /**
     *页面搜索产品查询(真的)
     * @return
     */
    @RequestMapping("/productfind")
    public String productFindByName(String name,Model model){
        model.addAttribute("productList",productService.queryByName(name));
        return "product";
    }

    /**
     *页面搜索产品查询
     * @return
     */
    @RequestMapping("/productfindall")
    public String productFind(Model model){

        model.addAttribute("productList", productService.queryAllProduct());
        return "product";
    }

    /**
     * 产品属性
     */
    @RequestMapping("/att")
    public String attrProduct(Integer id,Model model){
        model.addAttribute("map",productService.queryDateProductById(id));
        return "productAtttable";
    }

//    /**
//     * 上传图片
//     * @param file
//     * @return
//     * @throws IOException
//     */
//    @RequestMapping("/addproductimg")
//    public String fileUpload(MultipartFile file,Product product)  {
//
//        /**
//         * 上传图片
//         */
//        //图片上传成功后，将图片的地址写到数据库
//        String filePath = "E:\\upload";//保存图片的路径
//        //获取原始图片的拓展名
//        String originalFilename = file.getOriginalFilename();
//        //新的文件名字
//        String newFileName = UUID.randomUUID()+originalFilename;
//         //封装上传文件位置的全路径
//        File targetFile = new File(filePath,newFileName);
//         //把本地文件上传到封装上传文件位置的全路径
//        try {
//            file.transferTo(targetFile);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//
//
//        return "redirect:/product";
//    }

}


