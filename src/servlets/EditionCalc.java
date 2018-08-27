package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditionCalc
 */
@WebServlet("/editioncalc")
public class EditionCalc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditionCalc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double num1 = Double.parseDouble(request.getParameter("number1"));
		double num2 = Double.parseDouble(request.getParameter("number2"));
		String result = "";
		if (request.getParameter("add")!=null) {  // chechbox is checked
			result+="summ= "+(num1+num2)+" ";
		}
		if (request.getParameter("sub")!=null) {
			result+="subtraction= "+(num1-num2)+" ";
		}
		if (request.getParameter("multi")!=null) {
			result+="multiply= "+(num1*num2)+" ";
		}
		if (request.getParameter("div")!=null) {
			result+="dividing= "+(num1/num2)+" ";
		}
		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("CalcEdition.jsp");
		rd.forward(request, response);
	}

}
