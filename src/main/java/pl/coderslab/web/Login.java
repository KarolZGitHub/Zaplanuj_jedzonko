package pl.coderslab.web;

import pl.coderslab.dao.AdminDAO;
import pl.coderslab.model.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AdminDAO adminDAO = new AdminDAO();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin = adminDAO.findByEmail(email);

        if (admin != null && admin.getPassword().equals(password)) {
            System.out.println("Haslo jest OK");
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);
            response.sendRedirect("/home");
        } else {
            System.out.println("Haslo nie jest OK");
            request.setAttribute("message", "Nieprawidłowy email lub hasło");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
    }

}
