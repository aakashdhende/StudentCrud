<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>${student.id == 0 ? "Add" : "Update"} Student</title>
</head>
<body>
    <h2>${student.id == 0 ? "Add" : "Update"} Student</h2>
    <form:form action="/saveStudent" modelAttribute="student" method="post">
        <form:hidden path="id"/>
        Name: <form:input path="name"/><br/>
        Email: <form:input path="email"/><br/>
        Course: <form:input path="course"/><br/>
        <input type="submit" value="Save"/>
    </form:form>
</body>
</html>