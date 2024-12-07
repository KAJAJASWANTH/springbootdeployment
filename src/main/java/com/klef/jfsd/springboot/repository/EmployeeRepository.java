package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;
import java.util.List;


@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{
	 @Query("select a from Employee  a where a.email=?1  and a.password=?2 ")
	   public Employee checkregistrationlogin(String email,String pwd);
	 
	 
	 @Query("update Employee  e set e.status=?1 where e.id=?2")
	 @Modifying  //DML
	 @Transactional  //to enable auto commit
	 public String updateEmployeeStatus(String status ,int eid);
	 
	 //reference
	 //no need to write queries explicitly
	 
	 public List<Employee> findByDepartment(String department);
	 public List<Employee> findByGenderAndDepartment(String gender, String department);
	 public List<Employee> findByGender(String gender);
	 
	 
}