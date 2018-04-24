package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/address.jsp")
public class AddressFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpSession httpSession = ((HttpServletRequest)servletRequest).getSession(true);

        if (servletRequest.getParameter("firstName") == null || servletRequest.getParameter("firstName").equals("")
                || servletRequest.getParameter("surname") == null || servletRequest.getParameter("surname").equals("")
                || servletRequest.getParameter("dob") == null || servletRequest.getParameter("dob").equals("")
                || servletRequest.getParameter("pesel") == null || servletRequest.getParameter("pesel").equals("")) {
            ((HttpServletResponse)servletResponse).sendRedirect("/index.jsp");
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
