package com.lizhi.util;
import com.lizhi.model.Good;
import com.lizhi.model.Order;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import java.util.ArrayList;
import java.util.List;

public class Tools {
    public static List<Good> getlist(String url) {
        List<Good> goodlist=new ArrayList<Good>();
        RestTemplate restTemplate=new RestTemplate();
        ResponseEntity<String> responseEntity = restTemplate.getForEntity(url,String.class);
        String str=responseEntity.getBody();
        str=str.substring(1,str.length()-1);
        String []strs=str.split("}");
        strs[0]=strs[0].substring(1,strs[0].length());
        for(int i=1;i!=strs.length;++i){
         strs[i]=strs[i].substring(2,strs[i].length());
        }
        for(int i=0;i!=strs.length;++i){
            Good g=new Good();
            String strss[]=strs[i].split(",");
            g.id=strss[0].split(":")[1].substring(1,strss[0].split(":")[1].length()-1);
            g.name=strss[1].split(":")[1].substring(1,strss[1].split(":")[1].length()-1);
            g.addr="/resources/2.jpg";
            g.price=strss[4].split(":")[1];
            System.out.println(g.id+" "+g.name+" "+g.addr+" "+g.price);
            goodlist.add(g);
        }
        return goodlist;
    }
    public static String logincheck(String name,String password,String url){
        String requestJson = "{\"userName\":"+"\""+name+"\""+","+"\"userPwd\":"+"\""+password+"\""+"}";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<String> entity = new HttpEntity<String>(requestJson,headers);
        RestTemplate restTemplate=new RestTemplate();
        String str = restTemplate.postForObject(url, entity, String.class);
        str=str.substring(1,str.length()-1);
        String strs[]=str.split(",");
        String strss[]=strs[0].split(":");
        return "12345";

    }
    public static List<Order> orderlist(String url) {
        String requestJson = "{}";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<String> entity = new HttpEntity<String>(requestJson,headers);
        RestTemplate restTemplate=new RestTemplate();
        String str = restTemplate.postForObject(url, entity, String.class);
        List<Order> orderlist=new ArrayList<Order>();
        str=str.substring(1,str.length()-1);
        String []strs=str.split("}");
        strs[0]=strs[0].substring(1,strs[0].length());
        for(int i=1;i!=strs.length;++i){
            strs[i]=strs[i].substring(2,strs[i].length());
        }
        for(int i=0;i!=strs.length;++i){
            Order g=new Order();
            String strss[]=strs[i].split(",");
            g.name=strss[0].split(":")[1].substring(1,strss[0].split(":")[1].length()-1);
            g.addr="/resources/2.jpg";
            g.price=strss[3].split(":")[1];
            g.orderid=strss[4].split(":")[1].substring(1,strss[1].split(":")[1].length()-1);
            System.out.println(" "+g.name+" "+g.addr+" "+g.price);
            orderlist.add(g);
        }
        return orderlist;
    }

}
