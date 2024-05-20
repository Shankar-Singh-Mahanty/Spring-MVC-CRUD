package org.mvc.controller;

import java.util.List;

import org.mvc.dao.StudentDAO;
import org.mvc.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {

  @Autowired
  private StudentDAO dao;

  @RequestMapping(value = {"/", "/index"})
  public String home(Model model) {
    List<Student> list = dao.getListOfStudents();
    model.addAttribute("studentsList", list);
    return "index";
  }

  @RequestMapping("/studentform")
  public String showForm(Model model) {
    model.addAttribute("student", new Student());
    return "add_student";  // WEB-INF/views/add_student.jsp
  }

  @RequestMapping(value = "/add", method = RequestMethod.POST)
  public String addStudent(@ModelAttribute("student") Student student) {
    dao.insert(student);
    return "redirect:/index";  // WEB-INF/views/index.jsp
  }

  @RequestMapping(value = "/editstudentform/{id}")
  public String showEditForm(@PathVariable("id") Integer id, Model model) {
    Student student = dao.getStudentById(id);
    model.addAttribute("student", student);
    return "update_student";  // WEB-INF/views/update_student.jsp
  }

  @RequestMapping(value = "/update", method = RequestMethod.POST)
  public String updateStudent(@ModelAttribute("student") Student student) {
    dao.update(student);
    return "redirect:/index";  // WEB-INF/views/index.jsp
  }

  @RequestMapping(value = "/deletestudent/{id}")
  public String deleteStudent(@PathVariable("id") Integer id) {
    dao.delete(id);
    return "redirect:/index";  // WEB-INF/views/index.jsp
  }
}
