/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nedreba
 */
public class NewCustomerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewCustomerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewCustomerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String inputFirstName = request.getParameter("firstName");
        String inputLastName= request.getParameter("lastName");
        String inputPhone = request.getParameter("phoneNumber");
        String inputAddress = request.getParameter("address");
        String inputCity = request.getParameter("city");
        String inputState = request.getParameter("state");
        String inputZipcode = request.getParameter("zipcode");
        String inputEmail= request.getParameter("email");
        String message;
        String targetURL;
        
        if(inputFirstName == null || inputFirstName.isEmpty() ||
           inputLastName == null || inputLastName.isEmpty() ||
           inputPhone == null || inputPhone.isEmpty() ||
           inputAddress == null || inputAddress.isEmpty() ||
           inputCity == null || inputCity.isEmpty() ||
           inputState == null || inputState.isEmpty() ||
           inputZipcode == null || inputZipcode.isEmpty() ||
           inputEmail == null || inputEmail.isEmpty())
        {
            message = "Please fill out all text boxes";
            targetURL = "/New_customer.jsp";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher(targetURL).forward(request, response);
        }
        else
        {
            String tempUsername = (inputLastName + inputZipcode);
          String tempPassword = "welcome1";
          
          User user = new User(inputFirstName, inputLastName, inputPhone, inputAddress,
                  inputCity, inputState, inputZipcode, inputEmail, tempUsername,
                  tempPassword);
          
          HttpSession session = request.getSession();
          session.setAttribute("user", user);
          
            message = "";
            targetURL = "/Success.jsp";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher(targetURL).forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
