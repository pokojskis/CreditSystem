<%--
  Created by IntelliJ IDEA.
  User: pokojskis
  Date: 24.04.18
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person</title>
</head>
<body>
    <jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"></jsp:useBean>
    <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>

    <jsp:setProperty name="parameters" property="*"></jsp:setProperty>

    Numer wniosku: ${loan.number}<br/>
    Wnioskowana kwota: ${parameters.amount}

    <form action="address.jsp">
        <label>Imie: <input type="text" id="firstName" name="firstName"/></label><br/>
        <label>Nazwisko: <input type="text" id="surname" name="surname"/></label><br/>
        <label>Nr pesel: <input type="text" id="pesel" name="pesel"/></label><br/>
        <label>Data urodzin: <input type="date" id="dob" name="dob"></label><br/>
        <input type="submit" value="nastepny krok">
    </form>

</body>
</html>
