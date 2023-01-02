import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PickAColorServlet", urlPatterns = "/pickColor")
public class PickAColorServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/pickColor.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userColor = request.getParameter("pickAColor");
        request.setAttribute("favoriteColor", userColor);
        System.out.println(userColor);
        request.getRequestDispatcher("/UserColorServlet").forward(request, response);
        response.sendRedirect("/userColor.jsp");

    }
}
