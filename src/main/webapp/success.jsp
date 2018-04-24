<%@ page import="domain.LoanApplication" %><%--
  Created by IntelliJ IDEA.
  User: pokojskis
  Date: 24.04.18
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <jsp:useBean id="loanService" class="service.LoanService" scope="application"></jsp:useBean>
    <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
    <jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"></jsp:useBean>
    <jsp:useBean id="person" class="domain.Person" scope="session"></jsp:useBean>
    <jsp:useBean id="address" class="domain.Address" scope="session"></jsp:useBean>

    <jsp:setProperty name="address" property="*"></jsp:setProperty>

    <%
        loan.setParameters(parameters);
        loan.setPerson(person);
        loan.setAddress(address);
        loanService.add(loan);
    %>
    <ul>
        <%
            for(LoanApplication loanApplication : loanService.getAll()) {
        %>
        <li>Wniosek:<%=loanApplication.getNumber()
                                + " Osoba: " + loanApplication.getPerson().getSurname()
                                + " Kwota: " + loanApplication.getParameters().getAmount()
                                + " Miasto: " + loanApplication.getAddress().getCity()
                                + " Kod pocztowy: " + loanApplication.getAddress().getZipCode()
                                + " Ulica: " + loanApplication.getAddress().getStreet()
                                + " Nr domu: " + loanApplication.getAddress().getHouseNumber()
                                + " Nr mieszkania: " + loanApplication.getAddress().getLocalNumber()
                                + " Nr telefonu: " + loanApplication.getAddress().getPhoneNumber()%></li>
        <%
            }
        %>
    </ul>
</body>
</html>
