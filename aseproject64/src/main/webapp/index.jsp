<%-- //[START all]--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- //[START imports]--%>
<%@ page import="com.tum.aseproject64.VerifyStudentServlet" %>
<%@ page import="com.tum.aseproject64.Student" %>
<%@ page import="com.googlecode.objectify.Key" %>
<%@ page import="com.googlecode.objectify.ObjectifyService" %>
<%-- //[END imports]--%>

<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Aseproject64</title>
  </head>

  <body>
    <h1>ASE-Project group 6-4!</h1>
    
<!-- TODO: Register - Add new Student to the list of students and save the entry to the datastore -->

    <%
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String matrikelnumber = request.getParameter("matrikelnumber");

    Student student = new Student(firstname, lastname, matrikelnumber);

    //ObjectifyService.ofy().save().entity(student).now();

    response.getWriter().println("Your name is: " + firstname + " " + lastname);
    response.getWriter().println("Matrikel number: " +matrikelnumber);
    %>

    <h2>Register new Student</h2>
    <form action="/index.jsp" method="get">
     First name:<br>
      <input type="text" name="firstname"><br>
      Last name:<br>
      <input type="text" name="lastname"><br>
      Matrikel number:<br>
      <input type="number" name="matrikelnumber">
      <input type="submit" value="Register">
    </form>
    
<!-- TODO: Login - Verify if the login data corresponds to an existing entry in students and display the data -->

    <h2>Login</h2>
    <form action="/verify" method="get">
     First name:<br>
      <input type="text" name="firstname"><br>
      Last name:<br>
      <input type="text" name="lastname"><br>
      Matrikel number:<br>
      <input type="number" name="matrikelnumber">
      <input type="submit" value="Login">
    </form>
  </body>
</html>
