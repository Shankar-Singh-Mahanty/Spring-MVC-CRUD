package org.mvc.dao;

import java.util.List;

import org.mvc.model.Student;
import org.springframework.jdbc.core.JdbcTemplate;

public class StudentDAO {

  private JdbcTemplate jdbcTemplate;

  public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
    this.jdbcTemplate = jdbcTemplate;
  }

  public int insert(Student student) {
	    String sql = "INSERT INTO Student (id, name, branch, semester) VALUES (?, ?, ?, ?)";
	    return jdbcTemplate.update(sql, student.getId(), student.getName(), student.getBranch(), student.getSemester());
  }

  public int update(Student student) {
    String sql = "UPDATE Student SET name = ?, branch = ?, semester = ? WHERE id = ?";
    return jdbcTemplate.update(sql, student.getName(), student.getBranch(), student.getSemester(), student.getId());
  }

  public int delete(int id) {
    String sql = "DELETE FROM Student WHERE id = ?";
    return jdbcTemplate.update(sql, id);
  }

  public Student getStudentById(int id) {
	    String sql = "select * from student where id = '" + id + "'";
	    return jdbcTemplate.queryForObject(sql, new RowMapperImpl());
  }


  public List<Student> getListOfStudents() {
    String sql = "SELECT * FROM Student";
    return jdbcTemplate.query(sql, new RowMapperImpl());
  }
}
