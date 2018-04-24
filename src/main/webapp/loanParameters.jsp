<%@ page import="java.util.Random" %>
<%@ page import="domain.LoanApplication" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Loan Parameters</title>
</head>
<body>
    <%!
        private Random generator = new Random();
    %>

    <%
        String number = "" + generator.nextInt();
    %>

    <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
    <jsp:setProperty name="loan" property="number" value="<%=number %>"></jsp:setProperty>
    <jsp:setProperty name="loan" property="date" value="<%=new Date() %>"></jsp:setProperty>

    <p>Wygenerowany numer wniosku: <%=loan.getNumber() %></p>
    <br/>
    <p>Data wygenerowania: <%=loan.getDate() %></p>
    <br/>

    <form action="person.jsp">
        <label>Wnioskowana kwota: <input type="number" id="amount" name="amount"/></label><br/>
        <label>Ilosc rat: <input type="number" id="installmentCount" name="installmentCount"/></label><br>
        <input type="submit" value="nastepny krok"/>
    </form>

</body>
</html>
