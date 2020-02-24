package com.sz.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class Onloadimg {


    public static String upImg(MultipartFile upload) {
        //图片上传成功后，将图片的地址写到数据库
        String filePath="D:/毕设项目/product Publicity website/src/main/webapp/page/upload/";
        String fileName = upload.getOriginalFilename();  //获取上传文件的名字
        //判断文件夹是否存在,不存在则创建
        File file=new File(filePath);

        if(!file.exists()){
            file.mkdirs();
        }

        String newFilePath=filePath+fileName; //新文件的路径

        try {
            upload.transferTo(new File(newFilePath));  //将传来的文件写入新建的文件

        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }
        String url = "upload/" + fileName;
        return url;
    }

}


