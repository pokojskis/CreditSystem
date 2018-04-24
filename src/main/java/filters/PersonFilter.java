package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/person.jsp")
public class PersonFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpSession httpSession = ((HttpServletRequest) servletRequest).getSession(true);

        if (servletRequest.getParameter("amount") == null || servletRequest.getParameter("amount").equals("")
                || servletRequest.getParameter("installmentCount") == null || servletRequest.getParameter("installmentCount").equals("")) {
            ((HttpServletResponse) servletResponse).sendRedirect("/index.jsp");
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
