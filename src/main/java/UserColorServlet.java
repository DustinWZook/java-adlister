import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserColorServlet", urlPatterns = "/userColor")
public class UserColorServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String userColor = request.getParameter("pickAColor");
        System.out.println(userColor+" user color");
    }


}
