
<c:import url="/header.html"/>

        <h1>Titan Online Banking Application</h1>
        <h2>Reset Password</h2>
        <form action="ResetPasswordServlet" method="post"> 
            <label>Password:</label>
            <input type="password" name="password" required value="${user.password}"><br>
            <input type="submit" value="Reset Password">
        </form>

<c:import url="/footer.jsp"/>