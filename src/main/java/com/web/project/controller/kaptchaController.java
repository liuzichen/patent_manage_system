/**
 * 
 */
package com.web.project.controller;

/**
 * @author 子晨
 *
 */

import java.awt.image.BufferedImage;  

import javax.imageio.ImageIO;  
import javax.servlet.ServletOutputStream;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.web.servlet.ModelAndView;  
import org.springframework.web.servlet.mvc.Controller;

import com.google.code.kaptcha.Constants;  
import com.google.code.kaptcha.Producer;  
  
 
public class kaptchaController implements Controller{  
	 
    private Producer captchaProducer = null;  
  
    public void setCaptchaProducer(Producer captchaProducer) {  
        this.captchaProducer = captchaProducer;  
    }  
  

    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {  
        response.setDateHeader("Expires", 0);  
        // Set standard HTTP/1.1 no-cache headers.  
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
        // Set standard HTTP/1.0 no-cache header.  
        response.setHeader("Pragma", "no-cache");  
        // return a jpeg  
        response.setContentType("image/jpeg");  
        // create the text for the image  
        String capText = captchaProducer.createText();  
        // store the text in the session  
        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);  
        // create the image with the text  
        BufferedImage bi = captchaProducer.createImage(capText);  
        ServletOutputStream out = response.getOutputStream();  
        // write the data out  
        ImageIO.write(bi, "jpg", out);  
        try {  
            out.flush();  
        } finally {  
            out.close();  
        }  
        return null;
    }  
  
}  