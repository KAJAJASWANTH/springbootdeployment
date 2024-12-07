package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Employee;


public interface EmployeeService 
{
  public String EmployeeRegistration(Employee emp);
  public Employee checkregistrationlogin(String email,String pwd);
  public String updateEmployeeProfile(Employee employee);
  public Employee displayEmployeeId(int eid);
  
  
}
