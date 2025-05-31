<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head><title>Students List</title></head>
<body>
<h2>Students List</h2>
<a href="/add">Add New Student</a>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Actions</th></tr>
    <c:forEach var="student" items="${listStudents}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.course}</td>
            <td>
                <a href="/update/${student.id}">Update</a>
                <a href="/delete/${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>