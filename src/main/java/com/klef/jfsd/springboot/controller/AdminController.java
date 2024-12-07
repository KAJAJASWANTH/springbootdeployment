package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.PathParam;

@Controller
public class AdminController 
{
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private EmployeeService employeeService;
  
    @GetMapping("adminlogin")
     public ModelAndView adminlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
  
     @GetMapping("viewallemps")
     public ModelAndView viewallemps()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("viewallemps");
       mv.addObject("emplist",emplist);
       
       long count=adminService.empcount();
       mv.addObject("count",count);
       
       return mv;
     }
     
     @GetMapping("deleteemp")
     public ModelAndView deleteemp()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("deleteemp");
       mv.addObject("emplist",emplist);
       return mv;
     }
     
     
     
     @GetMapping("delete")
     public String deleteoperation(@RequestParam("id") int eid)
     {
       adminService.deleteemp(eid);
       
       return "redirect:/deleteemp"; // redirection to specific path
     }
     @PostMapping("checkadminlogin")
     public ModelAndView checkadminlogin(HttpServletRequest request) {
         String auname = request.getParameter("auname");
         String apwd = request.getParameter("apwd");

         Admin admin = adminService.checkadminlogin(auname, apwd);

         ModelAndView mv = new ModelAndView();

         if (admin != null) {
             mv.setViewName("adminhome");

             long count = adminService.empcount();
             mv.addObject("count", count);
         } else {
             mv.setViewName("adminlogin");  // Use the same view for login
             mv.addObject("message", "Invalid credentials. Please try again.");
         }

         return mv;
     }


     
     
     @GetMapping("adminhome")
     public ModelAndView adminhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminhome");
       
       long count=adminService.empcount();
       mv.addObject("count",count);
       
       return mv;
     }
     
     
     @GetMapping("adminlogout")
     public ModelAndView adminlogout()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
     
     @GetMapping("updateempstatus")
     public ModelAndView updateempstatus()
     {
       ModelAndView mv = new ModelAndView();
       List<Employee> emplist = adminService.ViewAllEmployees();
       mv.setViewName("updateempstatus");
       mv.addObject("emplist",emplist);
       return mv;
     }
     
     @GetMapping("updatestatus")
     public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
     {
      adminService.updateemployeestatus(status, eid);
      return "redirect:/updateempstatus";
       
     }
     
     
     @GetMapping("addcustomer")
     public String addcustomer(Model m)
     {
       m.addAttribute("customer", new Customer());
       return "addcustomer"; //addcustomer.jsp
     }
     
     
     @PostMapping("insertcustomer")
     public ModelAndView insertcustomer(@ModelAttribute("customer") Customer c)
     {
       ModelAndView mv = new ModelAndView();
       
       mv.setViewName("customersuccess");
       
       String msg = adminService.addcustomer(c);
       mv.addObject("message", msg);
       
       return mv;
     }
     
     
     
     @GetMapping("/viewempbyid")
     public ModelAndView viewempbyid(int eid) {
         ModelAndView mv = new ModelAndView();
         
         Employee emp = employeeService.displayEmployeeId(eid);
         
         if (emp != null) {
             mv.setViewName("viewempbyid");
             mv.addObject("emp", emp);
         } else {
             mv.setViewName("empdatanotfound");
         }
         
         return mv;
     }

     
}