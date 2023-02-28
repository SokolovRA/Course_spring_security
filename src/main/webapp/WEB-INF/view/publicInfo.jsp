<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: mariatuzova
  Date: 28.02.2023
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<body>

<h1>Public Information</h1>
<br>
<br>
<security:authorize access="hasRole('Employee')">
<input type="button" value="For Employee"
       onclick="window.location.href = 'employee_info'">
Only for Employee
</security:authorize>
<br>
<br>
<security:authorize access="hasRole('IT')">
<input type="button" value="For IT"
       onclick="window.location.href = 'it_info'">
Only for IT
</security:authorize>
<br>
<br>
<security:authorize access="hasRole('Security(Stuff)')">
<input type="button" value="For Security(Stuff)"
onclick="window.location.href = 'security(stuff)_info'">
Only for Security
</security:authorize>
<br>
<br>
<security:authorize access="hasRole('Director')">
<input type="button" value="For Director"
onclick="window.location.href = 'director_info'">
Only for Director
 </security:authorize>


</body>

</html>
