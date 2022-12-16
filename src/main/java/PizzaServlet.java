import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String crust = request.getParameter("pizzaCrust");
        String sauce = request.getParameter("pizzaSauce");
        String size = request.getParameter("pizzaSize");
        String address = request.getParameter("address");
        String[] toppings = request.getParameterValues("toppings");
        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        for (String topping : toppings) {
            System.out.println(topping);
        }
        System.out.println(address);

        response.sendRedirect("/pizza-order");
    }

    public static void main(String[] args) {

    }
}