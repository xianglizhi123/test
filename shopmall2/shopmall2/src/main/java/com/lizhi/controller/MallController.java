package com.lizhi.controller;

import com.lizhi.model.Order;
import com.lizhi.util.Tools;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes({"user","goodlist","orderlist"})
@RequestMapping(value="UF")
public class MallController {
    @RequestMapping(value="/history")
    public ModelAndView home2(@RequestParam("service") String serv,Model model){
        ModelAndView mv=new ModelAndView();
        List<Order> orders=new ArrayList<Order>();
        orders= Tools.orderlist("http://49.4.4.124:31184/manager-demo/v1/rest/orderList");
        model.addAttribute("orderlist",orders);
        mv.setViewName("history");
        System.out.println(serv);
        return mv;
    }
     @RequestMapping(value="/personalinfor")
    public ModelAndView jumpbill(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("personalinfor");
        return mv;
     }
}
