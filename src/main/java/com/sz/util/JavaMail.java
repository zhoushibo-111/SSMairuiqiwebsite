package com.sz.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 *
 * java实现邮箱发送邮件功能
 *
 *
 * @author WQ
 *
 */
public class JavaMail {
    public void sendMail(String name,String email,String content) throws MessagingException {
        Properties props = new Properties();
        props.setProperty("mail.smtp.timeout", "200000");//设置链接超时
        props.setProperty("mail.smtp.port", Integer.toString(25));//设置端口
        props.setProperty("mail.smtp.socketFactory.port", Integer.toString(465));//设置ssl端口
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host","smtp.163.com");// smtp服务器地址
        Session session = Session.getInstance(props);
        session.setDebug(true);

        Message msg = new MimeMessage(session);
        msg.setSubject("尊敬的"+name+": 您好");
        msg.setText(content+"\r\n"+"(根据您的留言,稍后我们会与您取得联系)");
        msg.setFrom(new InternetAddress("xdxdxd1996@163.com"));//发件人邮箱(我的163邮箱)
        msg.setRecipient(Message.RecipientType.TO,
                new InternetAddress(email)); //收件人邮箱(我的QQ邮箱)
        msg.saveChanges();

        Transport transport = session.getTransport();
        transport.connect("xdxdxd1996@163.com","NZHOSHWRKWQZTXMG");//发件人邮箱,授权码(可以在邮箱设置中获取到授权码的信息)
        try{
            transport.sendMessage(msg, msg.getAllRecipients());

            System.out.println("邮件发送成功...");
            transport.close();
        }catch (Exception e){
            System.out.println("邮件发送失败...");
            transport.close();
        }


    }
}
