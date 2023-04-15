package pl.coderslab.web.app.recipe;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/app/recipe/add")
public class AddRecipe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Przekieruj na widok formularza dodawania przepisu
        request.getRequestDispatcher("/app/recipe/recipeAdd.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Odbierz dane z formularza
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        // Przekieruj na stronę z listą wszystkich przepisów
        response.sendRedirect("/app/recipe/list");
    }
}
