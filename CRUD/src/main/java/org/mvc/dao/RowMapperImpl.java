package org.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.mvc.model.Student;
import org.springframework.jdbc.core.RowMapper;

public class RowMapperImpl implements RowMapper<Student> {

  @Override
  public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
    // TODO It will convert the result-set into objects
    Student Student = new Student();
    Student.setId(rs.getInt(1));
    Student.setName(rs.getString(2));
    Student.setBranch(rs.getString(3));
    Student.setSemester(rs.getString(4));
    
    return Student;
  }
  

}