package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import DAO.DAO_Product;
import Entity.Products;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class productController
 */
@WebServlet("/home")
public class productController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public productController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// vấn đè là làm gì có cái nào bên jsp gọi về doGet mà hiện lên
		DAO_Product daoP = new DAO_Product();
		ArrayList<Products> list =  daoP.SelectAll();
		// chuyển dữ liệu qua trang Funiture.jsp
		// đẩy cái cái list lên chỗ listProduct
		request.setAttribute("products", list);
		// đẩy cái cái list lên chỗ listProduct trên trang Funiture.jsp
		request.getRequestDispatcher("Funiture.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
      }

}
