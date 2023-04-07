package pl.coderslab.web;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/app/*")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        boolean check = session != null && session.getAttribute("login") != null && session.getAttribute("login").equals("loggedIn");
        if (check) {
            String login = (String) session.getAttribute("login");
            session.setAttribute(login , "loggedIn");
        }else {
            httpServletResponse.sendRedirect("/login");
        }
        chain.doFilter(request, response);
    }
}
