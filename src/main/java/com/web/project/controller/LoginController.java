package com.web.project.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.code.kaptcha.Constants;
import com.web.project.model.News;
import com.web.project.model.Question;
import com.web.project.model.enterprise.EnterpriseCommonProject;
import com.web.project.model.enterprise.EnterpriseProject;
import com.web.project.model.maker.MakerCommonWorks;
import com.web.project.model.maker.MakerProject;
import com.web.project.service.RePasswordService;
import com.web.project.service.enterprise.EnterpriseProjectService;
import com.web.project.service.expertService.CommentService;
import com.web.project.service.expertService.ExpertInfoService;
import com.web.project.service.maker.MakerInfoService;
import com.web.project.service.makerService.MakerProjectService;
import com.web.project.service.relationship.NewsService;
import com.web.project.service.relationship.QuestionService;
import com.web.project.vo.EnterpriseCommonProjectVo;
import com.web.project.vo.MakerCommonWorksVo;
import com.web.project.vo.NewsVo;
import com.web.project.vo.QuestionVo;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
    ExpertInfoService expertInfoService;
	
	@Autowired
	MakerInfoService makerInfoService;
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	EnterpriseProjectService enterpriseProjectService;
	
	@Autowired
	QuestionService questionService;
	
	@Autowired
	RePasswordService rePasswordService;
	
	@Autowired
	CommentService commentService;
  
  @Autowired
	MakerProjectService makerProjectService;
	
	/**
	 * 登录验证
	 */
	@RequestMapping("log")
	public String login(@RequestParam("role") String type,
			@RequestParam("login_username") String username,@RequestParam("login_password")String password,
			@RequestParam("login_code") String code,ModelMap model,HttpServletRequest request) throws UnsupportedEncodingException{
		username=new String(username.getBytes("iso-8859-1"), "utf-8");
		HttpSession session = request.getSession();
		if (!request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY)
				.toString().equals(new String(code.getBytes("iso-8859-1"), "utf-8"))) {
			request.getSession().setAttribute("isExist", "2");
			return "login";
		}
		
		if(new String(type.getBytes("iso-8859-1"), "utf-8").equals("专家用户") ){
			if(expertInfoService.isExist(username, password)==true){			
				session.setAttribute("userId", expertInfoService.getExpertInfoByLoginName(username).getId());
				session.setAttribute("type", "expert");
				session.setAttribute("userName", username);
				session.setAttribute("usertype", "专家用户");
				session.setAttribute("table", "expert");
				session.setAttribute("password", password);
				return "index";
			}else {
				request.getSession().setAttribute("isExist", "1");
			}
		}
		if(new String(type.getBytes("iso-8859-1"), "utf-8").equals("创客用户")){
			if(makerInfoService.isExist(username, password)==true){
				session.setAttribute("userId", makerInfoService.getMakerInfoByLoginName(username).getId());
				session.setAttribute("type", "maker");
				session.setAttribute("userName", username);
				session.setAttribute("usertype", "创客用户");
				session.setAttribute("table", "maker");
				session.setAttribute("password", password);
				return "index";
			}
		}
		return "login";
	}
	
	/**
	 * 登陆成功后，专家主页显示的信息
	 */
	@RequestMapping("expert")
	public String login(ModelMap model, HttpServletRequest request){
		HttpSession session = request.getSession();	
		int id = Integer.parseInt(session.getAttribute("userId").toString());
		//系统公告
		ArrayList<News> newsList = newsService.getNewsByType("系统公告");
		ArrayList<NewsVo> news = new ArrayList<NewsVo>();		
		for(int i=0;i< (newsList.size()<4?newsList.size():4);i++){
			NewsVo newsVo = new NewsVo();
			newsVo.transfer(newsList.get(i));
			newsVo.setTime(newsVo.getTime().substring(0, 10));
			news.add(newsVo);
		}
		model.put("news", news);
		
		//企业一般项目
		ArrayList<EnterpriseCommonProject> projectsList = commentService.getEnterpriseCommonProjectsByExpertId(id);
		ArrayList<EnterpriseCommonProjectVo> commonProjects = new ArrayList<>();
		for(int i=0;i< (projectsList.size()<4?projectsList.size():4);i++){
			EnterpriseCommonProjectVo vo = new EnterpriseCommonProjectVo();
			vo.transfer(projectsList.get(i));
			vo.setSubmitTime(vo.getSubmitTime().substring(0, 10));
			commonProjects.add(vo);
		}
		model.put("commonProjects", commonProjects);			
		
		//咨询问题回复
		ArrayList<Question> questionList = questionService.getQuestionByExpertID(id);
		ArrayList<QuestionVo> questions = new ArrayList<>();
		for(int i=0;i< (questionList.size()<4?questionList.size():4);i++){
			QuestionVo vo = new QuestionVo();
			vo.transfer(questionList.get(i));
			vo.setAskTime(vo.getAskTime().substring(0, 10));
			questions.add(vo);
		}
		model.put("questions", questions);	
		
		//创客原创成果评审
		ArrayList<MakerCommonWorks> makerCommonWorks = commentService.getMakerCommonWorksByExpertId(id);
		ArrayList<MakerCommonWorksVo> makerCommonWorksVos = new ArrayList<>();
		for(int i=0;i< (makerCommonWorks.size()<4?makerCommonWorks.size():4);i++){
			MakerCommonWorksVo vo = new MakerCommonWorksVo();
			vo.transfer(makerCommonWorks.get(i));
			vo.setSubmitTime(vo.getSubmitTime().substring(0, 10));
			makerCommonWorksVos.add(vo);
		}
		model.put("makercommworks", makerCommonWorksVos);
		return "expert/loging";
	}
    
	/**
	 * 创客主页显示信息
	 */
	@RequestMapping("maker")
	public String makerLogin(ModelMap model, HttpServletRequest request){
		//创客项目
		ArrayList<MakerProject> makerProjectsList=makerProjectService.getProjectList();
		List<MakerProject> makerProjects=makerProjectsList.subList(0, (makerProjectsList.size()<4?makerProjectsList.size():4));
		model.put("project", makerProjects);
		//系统公告
		ArrayList<News> newsList = newsService.getNewsByType("系统公告");
		ArrayList<NewsVo> news = new ArrayList<NewsVo>();		
		for(int i=0;i< (newsList.size()<4?newsList.size():4);i++){
			NewsVo newsVo = new NewsVo();
			newsVo.transfer(newsList.get(i));
			newsVo.setTime(newsVo.getTime().substring(0, 10));
			news.add(newsVo);
		}
		model.put("news1", news);
		//政府培训通知
		newsList = newsService.getNewsByType("政府培训通知");
		news = new ArrayList<NewsVo>();		
		for(int i=0;i< (newsList.size()<4?newsList.size():4);i++){
			NewsVo newsVo = new NewsVo();
			newsVo.transfer(newsList.get(i));
			newsVo.setTime(newsVo.getTime().substring(0, 10));
			news.add(newsVo);
		}
		model.put("news2", news);
		// 银行资金援助项目
		newsList = newsService.getNewsByType("银行资金援助项目");
		news = new ArrayList<NewsVo>();		
		for(int i=0;i< (newsList.size()<4?newsList.size():4);i++){
			NewsVo newsVo = new NewsVo();
			newsVo.transfer(newsList.get(i));
			newsVo.setTime(newsVo.getTime().substring(0, 10));
			news.add(newsVo);
		}
		model.put("news3", news);
		return "maker/loging";
	}
	
	/**
	 * 修改密码，根据用户类别，对应更新相关的登录密码信息
	 */
	@RequestMapping("repassword")
	public String rePassword(@RequestParam("newp") String password,HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		switch (new String(session.getAttribute("table").toString())) {
		case "expert":
			rePasswordService.rePassword(Integer.parseInt(session.getAttribute("userId").toString()), password,  "expert");
			break;
		case "maker":
			rePasswordService.rePassword(Integer.parseInt(session.getAttribute("userId").toString()), password, "maker");
			break;
		default:
			break;
		}
		
		return "repassword";
	}
	
}
