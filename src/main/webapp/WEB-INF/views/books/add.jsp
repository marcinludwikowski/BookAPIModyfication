<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form"--%>
<%--           uri="http://www.springframework.org/tags/form" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Book add</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form:form method="post"--%>
<%--           modelAttribute="book">--%>
<%--    <form:input path="isbn"/>--%>
<%--    <form:errors path="isbn"/><br/>--%>
<%--    <form:input path="title"/>--%>
<%--    <form:errors path="title"/><br/>--%>
<%--    <form:input path="author"/>--%>
<%--    <form:errors path="author"/><br/>--%>
<%--    <form:input path="publisher"/>--%>
<%--    <form:errors path="publisher"/><br/>--%>
<%--    <form:input path="type"/>--%>
<%--    <form:errors path="type"/><br/>--%>
<%--    <input type="submit" value="Save">--%>
<%--</form:form>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add</title>
</head>
<body>

<h3>Add book</h3>

<form:form method="post" modelAttribute="book">

    <div>ISBN: <form:input path="isbn"/></div><br>
        <div>Title: <form:input path="title"/></div><br>
    <div>Author: <form:input path="author"/></div><br>
    <div>Publisher: <form:input path="publisher"/></div><br>
    <div>Type: <form:input path="type"/></div><br>
    <input type="submit" value="Add book">
</form:form>

</body>
</html>
