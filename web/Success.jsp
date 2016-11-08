
<c:import url="header.html" />

        <div>
            <h1>Titan Online Banking Application</h1>
            <h2>Success</h2>
            <p>Account has been successfuly created</p>  
            <p>
                Username: ${user.username}<br>
                Password: ${user.password}<br>
                <br>
                First Name:     ${user.firstName}<br>
                Last Name:      ${user.lastName}<br>
                Phone Number:   ${user.phone}<br>
                Address:        ${user.address}<br>
                City:           ${user.city}<br>
                State:          ${user.state}<br>
                Zipcode:        ${user.zipcode}<br>
                Email:          ${user.email}<br>
            </p>
        </div>
                
<c:import url="footer.jsp" />
