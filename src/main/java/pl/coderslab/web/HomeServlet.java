package pl.coderslab.web;

import pl.coderslab.dao.RecipeDao;
import pl.coderslab.model.Recipe;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Do not change servlet address !!!
 */
@WebServlet("")
public class HomeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Można odkomentować i sprawdzać czy się poprawnie wyświetla lista przepisów w konsoli
//        RecipeDao recipeDao = new RecipeDao();
//        List<Recipe> recipes = recipeDao.findAll();
//        System.out.println(recipes);

        getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
