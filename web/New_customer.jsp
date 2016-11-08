<c:import url="header.html" />
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
<c:import url="footer.jsp" />