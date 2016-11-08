<c:import url="header.html" />
        <div>Login</div>
        <form action="LoginServlet" method="post">
            <label>Username</label>
            <input type="text" name="username"><br>
            <label>Password</label>
            <input type="text" name="password"><br>
            <input type="submit" value="Submit"><br>
        </form>
        <div>
            <p><a href="password_reset.jsp">Reset Password</a></p>
        <br>
            <a href="New_customer.jsp">New Customer</a>
        </div>
        <div>
            <br><br><br><br><br>
            <a href="index.jsp">Home</a>  
            <a href="Login.jsp">Login</a>
            <a href="Login_failure.jsp">Login Failure</a>
            <a href="New_customer.jsp">New Customer</a>
            <a href="Success.jsp">Success</a>
            <a href="Transaction.jsp">Transaction</a>
            <a href="Account_activity.jsp">Account Activity</a>
            <a href="Error_404.jsp">Error 404</a>
            <a href="Error_java.jsp">Error Java</a>
        </div>
<c:import url="footer.jsp" />