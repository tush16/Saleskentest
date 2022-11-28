package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dao.studentDao;
import com.example.demo.model.student;

@Controller
public class StudentController {
	@Autowired
	studentDao studentInterface;
	@GetMapping("/")
    public String home() {
        return "home.jsp";
    }
	@GetMapping("/addStudent")
	public String addStudent(student s1) {
		studentInterface.save(s1);
        return "home.jsp";
    }
	@GetMapping("/report")
    public String report() {
        return "report.jsp";
    }
	@GetMapping("/semesterClassAverage")
    public String classAvg(int sem, Model m) {
		m.addAttribute("classAvg", studentInterface.classAvg(sem));
        return "report.jsp";
    }
	@GetMapping("/subjectAverage")
    public String studentAvg(String name, Model m) {
		name=name.toLowerCase();
		List<List<Integer>> temp= new ArrayList<List<Integer>>();
		temp=studentInterface.subjectAvg();
		m.addAttribute("subject", name);
		if(name.equals("english")) {
		m.addAttribute("subjectAvg", temp.get(0).get(0));
		}
		else if(name.equals("math"))
		{	m.addAttribute("subjectAvg", temp.get(0).get(1));
		}else
		{	m.addAttribute("subjectAvg", temp.get(0).get(2));
		}	
        return "report.jsp";
    }
	
	@GetMapping("/topTwo")
    public String top(Model m) {
		List<String> temp1= new ArrayList<String>();
		temp1= studentInterface.top();
		m.addAttribute("student1", temp1.get(0));
		m.addAttribute("student2", temp1.get(1));
        return "report.jsp";
    }
	

}
