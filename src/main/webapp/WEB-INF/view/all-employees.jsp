<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Администратор
  Date: 01.05.2021
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>all-employees</title>
    <style>
        input {
            border: none;
            background: none;
            margin: 2%;
        }
        input:focus {
            outline: none;
        }
        th {
            font-size: 130%;
            letter-spacing: 4px;
            padding-right: 6%;
            padding-bottom: 2%;
        }
        input.bp {

            margin: 2%;

        }
        a.but {
            text-decoration: none;
            margin: 2%;
            border: none;
            padding: 2% 5%;
            background: #a9a9a9;
            border-radius: 25px;
            box-shadow: 3px 3px 5px 1px;
            display: grid;

        }
        a.but:hover {
            background: #838383;
        }
        a.but:active {
            background: #696969;
        }
        a.butAdd {
            margin: 2%;
            border: none;
            padding: 1% 5%;
            background: #79da7978;
            border-radius: 25px;
            box-shadow: 3px 3px 5px 3px;
        }
        a.butAdd:hover {
            background: #79da79ba;
            box-shadow: 4px 4px 5px 3px;
        }
        a.butAdd:active {
            background: #79da79;
            box-shadow: 5px 5px 5px 3px;
        }

    </style>
</head>
<body style="text-align: center;">

<div style="display: inline-block;    margin: auto; position: relative;">
    <h2 style="display: inline-block; padding:4%; box-shadow: 3px 3px 3px 3px; background: darkgrey; border-radius: 25px;">All Employees</h2>
    <br>
    <table style="padding:2%; box-shadow: 3px 3px 3px 3px; background: pink; border-radius: 25px;">
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>

        <c:forEach var="emp" items = "${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
               <a class="but"><input class="bp" type="button" value="Update" onclick="window.location.href = '${updateButton}'"/></a>

                <a class="but"><input class="bp"  type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/></a>
            </td>
        </tr>

        </c:forEach>

</table>

</div>

<br>
<a class="butAdd" onclick="window.location.href = 'addNewEmployee'"><input style="" type="button" value="Add" /></a>



</body>
</html>
