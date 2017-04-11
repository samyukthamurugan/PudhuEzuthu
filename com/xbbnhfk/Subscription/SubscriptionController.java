package com.xbbnhfk.Subscription;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.derby.iapi.services.io.NewByteArrayInputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xbbnhfk.profile.ConnectionManager;
import com.xbbnhfk.profile.ProfileBean;
import com.xbbnhfk.Subscription.*;
@RestController
@RequestMapping(value = "/subscription")



public class SubscriptionController {

@Autowired
SubscriptionDao adminDao;
    @RequestMapping(value = "/all" , method = RequestMethod.GET )

    public List<SubscriptionDetails> viewSubscriptionDetails() {

//new SubscriptionDao();

          ArrayList list = adminDao.viewSubscriptions();

  return list;

}
 /*@RequestMapping(value = "/subscription/{email}" , method = RequestMethod.GET )
    public List<StudentBean> get1(@PathVariable("email")String email) {
  
         List<StudentBean> list = new ArrayList<StudentBean>(); 
         studentDao bdao=new studentDao();
         list= bdao.getstudentdetails1(studentId);
         return list;
}      
  @RequestMapping(value = "/subscription",method = RequestMethod.POST)
  public String insertDetails1(@RequestBody SubscriptionDetails stud) {
                  SubscriptionDao bdao=new SubscriptionDao();
                if( bdao.subscribe(stud)==1)
                {
                                return "success";
                }
                else
                {
                  return "failure";
                }
       
   }
  @RequestMapping(value = "students/{studentId}" , method = RequestMethod.PUT)
  public  int updatestudentdetails(@PathVariable("studentId")int studentId){
                   List<StudentBean> list = new ArrayList<StudentBean>(); 
                   studentDao bdao=new studentDao();
         int flag= bdao.updatedetails(studentId);
         if(flag>0)
         {
                 return flag;
         }
         else
         {
         return flag;
         }
                }              
  
  @RequestMapping(value = "students/{studentid}" , method = RequestMethod.DELETE )
  public  int removestudentdetails(@PathVariable("studentid")int studentid){
                   List<StudentBean> list = new ArrayList<StudentBean>(); 
                   studentDao bdao=new studentDao();
         int flag= bdao.removestudentdetails(studentid);
         if(flag>0)
         {
                 return flag;
         }
         else
         {
         return flag;
         }
                } */             
  


	
}
