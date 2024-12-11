<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
     <%
     Student s = (Student) session.getAttribute("student");

if (s == null) {
	response.sendRedirect("stusessionfail");
	return;
}
%>
     

<!DOCTYPE html>
<html>
<head>
    <title>Update</title>
    <style>
       body {
           font-family: 'Arial', sans-serif;
           margin: 0;
           padding: 0;
           height: 100vh;
           display: flex;
           flex-direction: column;
           align-items: center; /* Center content horizontally */
           background-size: cover;
           color: #333;
       }

       h3 {
           text-align: center;
       }

       .registration-container {
           width: 400px;
           padding: 20px;
           border: 1px solid #ccc;
           border-radius: 10px;
           box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
           background-color: white; /* Optional: white background to highlight the form */
           margin: 0 auto;
           margin-top: 20px; /* Space between navbar and form */
       }

       table {
           width: 100%;
       }

       td {
           padding: 10px;
       }

       input[type="text"],
       input[type="date"],
       input[type="number"],
       input[type="email"],
       input[type="password"],
       select {
           width: 100%;
           padding: 8px;
           border: 1px solid #ccc;
           border-radius: 5px;
       }

       input[type="submit"],
       input[type="reset"] {
           background-color: #4CAF50;
           color: white;
           padding: 10px 15px;
           border: none;
           border-radius: 5px;
           cursor: pointer;
           margin-right: 10px;
       }

       input[type="submit"]:hover,
       input[type="reset"]:hover {
           background-color: #45a049;
       }
       
       
    </style>
</head>
<body>
    <%@include file="stunavbar.jsp" %>
    <h3><u>Update Student</u></h3>
    <div class="registration-container">
        <form method="post" action="update">
            <table>
            <tr>
                    <td><label for="sid">ID</label></td>
                    <td><input type="number" id="sid" name="sid" value="<%=s.getId()%>" readonly required/></td>
                </tr>
            
               <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=s.getName()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
               
               <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="ECE">ECE</option>
                            <option value="AI-DS">AI-DS</option>
                            <option value="EEE">EEE</option>
                            <option value="CSIT">CSIT</option>
                            <option value="IOT">IOT</option>
                            <option value="ECS">ECS</option>
                        </select>
                    </td>
                </tr>
                
                 <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value=<%=s.getLocation()%> required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" value=<%=s.getEmail()%> readonly required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
