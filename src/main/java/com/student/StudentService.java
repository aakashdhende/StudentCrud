package com.student;

import java.util.List;

public interface StudentService {
    List<Student> getAllStudents();
    Student getStudentById(int id);
    void saveStudent(Student student);
    void deleteStudentById(int id);
}