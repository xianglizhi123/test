package com.lizhi.controller;
import com.lizhi.model.Good;
import com.lizhi.model.User;
import com.lizhi.util.Tools;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes({"user","goodlist","orderlist"})
public class LoginController {
    public List<Good>goodList;
    public User user;
    public ModelAndView mv_login=new ModelAndView();
    @RequestMapping(value="/")
    public String home(){
        return "login";
    }
    @RequestMapping(value="Register")
    public ModelAndView register(@RequestParam("username") String name, @RequestParam("password") String password, Model model){
        ModelAndView mv=new ModelAndView();
        user=new User();
        user.setPassword(password);
        user.setId(name);
        mv.addObject("user",user);
        mv.setViewName("mall");
        model.addAttribute("user",user);
        List<Good>gs=new ArrayList<Good>();
        gs=Tools.getlist("http://49.4.4.124:31184/manager-demo/v1/rest/goodsList");
        model.addAttribute("goodlist",gs);
        return mv;
    }
    @RequestMapping("Login")
    public ModelAndView login(@RequestParam("username") String name, @RequestParam("password") String password, Model model){
        User luser=new User();
        luser.setId(name);
        luser.setPassword(password);
        luser.setStatus(false);
        goodList=new ArrayList<Good>();
        goodList=Tools.getlist("http://49.4.4.124:31184/manager-demo/v1/rest/goodsList");
        mv_login.addObject("glist",goodList);
        mv_login.setViewName("mall");
        model.addAttribute("user",luser);
        model.addAttribute("goodlist",goodList);
        return mv_login;
    }
    @RequestMapping(value="SignUp")
    public String signup(){
        return "signup";
    }
    @RequestMapping(value="Buy")
    public ModelAndView buy(Model model){
        RestTemplate restTemplate=new RestTemplate();
        try {
            String requestJson = "{\"queriedQuestion\":\"Is there pain in your hand?\"}";
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            HttpEntity<String> entity = new HttpEntity<String>(requestJson,headers);
            String answer = restTemplate.postForObject("http://49.4.4.124:31184/manager-demo/v1/rest/buy", entity, String.class);
            ModelAndView mv=new ModelAndView();
            List<Good>gs=new ArrayList<Good>();
            goodList=Tools.getlist("http://49.4.4.124:31184/manager-demo/v1/rest/goodsList");
            mv.addObject("glist",goodList);
            mv.setViewName("mall");
            return mv;
        }catch(Exception e){
            System.out.println("failed buying");
            mv_login.addObject("buystatus","failed");
            ModelAndView mv=new ModelAndView();
            goodList=Tools.getlist("http://49.4.4.124:31184/manager-demo/v1/rest/goodsList");
            mv.addObject("glist",goodList);
            mv.setViewName("mall");
            e.printStackTrace();
            return mv;
        }
    }
    @RequestMapping(value="confirm_buy")
    public String confirm_buy(){
        return "confirm_buy";
    }
    @RequestMapping(value="return_home")
    public String rehome(Model model){
        ModelAndView mv=new ModelAndView();
        return "mall";
    }
    @RequestMapping(value="Goodinfor",method=RequestMethod.GET)
    public ModelAndView goodinfor(){
        ModelAndView mv=new ModelAndView();
        RestTemplate restTemplate=new RestTemplate();
        List<Good> temp=Tools.getlist("http://49.4.4.124:31184/manager-demo/v1/rest/goodsDetail");
        Good tg=goodList.get(0);
        mv.addObject("goodinfor",tg);
        mv.setViewName("shangpinxinxi");
        return mv;
    }
}