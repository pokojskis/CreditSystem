<%--
  Created by IntelliJ IDEA.
  User: pokojskis
  Date: 24.04.18
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Address</title>
</head>
<body>
    <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
    <jsp:useBean id="person" class="domain.Person" scope="session"></jsp:useBean>

    <jsp:setProperty name="person" property="*"></jsp:setProperty>

    <form action="success.jsp">
        <label>Miasto: <input type="text" id="city" name="city"/></label><br/>
        <label>Kod pocztowy: <input type="text" id="zipCode" name="zipCode"/></label><br/>
        <label>Ulica: <input type="text" id="street" name="street"/></label><br/>
        <label>Nr domu: <input type="text" id="houseNumber" name="houseNumber"/></label><br/>
        <label>Nr mieszkania: <input type="text" id="localNumber" name="localNumber"/></label><br/>
        <label>Nr tel: <input type="text" id="phoneNumber" name="phoneNumber"/></label><br/>
        <input type="submit" value="nastepny krok">
    </form>

</body>
</html>
