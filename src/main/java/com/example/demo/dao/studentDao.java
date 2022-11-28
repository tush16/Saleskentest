package com.example.demo.dao;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.student;
public interface studentDao extends CrudRepository<student,Integer> {
	@Query("select (AVG(english)+AVG(math)+AVG(science))/3 as average from student s where s.sem= :sem")
	int classAvg(@Param("sem")int sem);
	
	@Query("select AVG(english) as eng_avg, AVG(math) as math_avg, AVG(science) as science_avg from student s")
	List<List<Integer>> subjectAvg();
	
	@Query("select s.name from student s group by s.name order by AVG(s.english + s.math+ s.science) DESC LIMIT 2")
	List<String> top();

}
