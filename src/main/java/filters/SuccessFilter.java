package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/success.jsp")
public class SuccessFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpSession httpSession = ((HttpServletRequest)servletRequest).getSession(true);

        if (servletRequest.getParameter("city") == null || servletRequest.getParameter("city").equals("")
                || servletRequest.getParameter("zipCode") == null || servletRequest.getParameter("zipCode").equals("")
                || servletRequest.getParameter("street") == null || servletRequest.getParameter("street").equals("")
                || servletRequest.getParameter("houseNumber") == null || servletRequest.getParameter("houseNumber").equals("")
                || servletRequest.getParameter("localNumber") == null || servletRequest.getParameter("localNumber").equals("")
                || servletRequest.getParameter("phoneNumber") == null || servletRequest.getParameter("phoneNumber").equals("")) {
            ((HttpServletResponse)servletResponse).sendRedirect("/index.jsp");
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
