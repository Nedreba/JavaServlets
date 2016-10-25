<%-- 
    Document   : New_customer
    Created on : Oct 24, 2016, 10:53:29 PM
    Author     : Nedreba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Titan Online Banking Application</title>
    </head>
    <body>
        <div>New Customer</div>
        <p><i>${message}</i></p>
        <form action="NewCustomerServlet" method="POST">
            <label>First Name</label>
            <input type="text" name="firstName"><br>
            <label>Last Name</label>
            <input type="text" name="lastName"><br>
            <label>Phone</label>
            <input type="text" name="phoneNumber"><br>
            <label>Address</label>
            <input type="text" name="address"><br>
            <label>City</label>
            <input type="text" name="city"><br>
            <label>State</label>
            <input type="text" name="state"><br>
            <label>Zipcode</label>
            <input type="text" name="zipcode"><br>
            <label>Email</label>
            <input type="text" name="email"><br>
            
            <input type="submit" value="Submit"><br>
        </form>

</html>
