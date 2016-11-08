
<c:import url="header.html" />

        <div>Account Activity</div>
        <div>           
            
            <c:choose>
                <c:when test="${user == null}">
                    <p>Not Logged in</p>
                </c:when>
                <c:otherwise>
                    <p>Welcome ${user.firstName} ${user.lastName}</p>
                </c:otherwise>
            </c:choose>
        </div>
<c:import url="footer.jsp" />