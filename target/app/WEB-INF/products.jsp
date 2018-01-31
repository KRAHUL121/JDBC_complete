<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Document</title>
        </head>

        <body>
            <form method="post" action="show.jsp">
                <center>
            <table  border="1" cellpadding="5">
                <tr>
                    <td><b>Id</b></td>
                    <td><b>Name</b></td>
                    <td><b>Description</b></td>
                    <td><b>Quantity</b></td>
                    <td colspan="2"><center><b>Actions</b></center></td>
                </tr>
                <c:forEach items="${products}" var="p">
                    <tr>

                        <td id=${p.id}>${p.id}</td>
                        <td>
                            <c:out value="${p.name}" />
                        </td>
                        <td>
                            <c:out value="${p.description}" />
                        </td>
                        <td>
                                <c:out value="${p.price}" />
                            </td>
                        
                        <td><a href='update?id=${p.id}'>update</a></td>
                        <td><a href='delete?id=${p.id}'>delete</a></td> 
                    </tr>

                </c:forEach>
            </table>
        </center>
            <br>
            <br>
            <center><input type="submit" value="Insert"/></center>
        </form>
        <br>
        <br>

        
   
        
        </body>

        </html>