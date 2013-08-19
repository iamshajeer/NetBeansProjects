/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package voting;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author PRABEESH
 */
@WebServlet(name = "VoterRegSer", urlPatterns = {"/VoterRegSer"})
public class VoterRegSer extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String email = request.getParameter("emailid");
        String department = request.getParameter("dept");
        String pos1 = request.getParameter("pos1");
        String pos2 = request.getParameter("pos2");
        String user_name = request.getParameter("username");
        String password= request.getParameter("password");
        String cpassword = request.getParameter("cpassword");
        String pos = pos1 +"-" +pos2;
        if(password.equals(cpassword))
        {
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        VoterReg vo = new VoterReg(name, gender, dob, address, email, department,pos, user_name, password);
        s.save(vo);
        tr.commit();
        request.getRequestDispatcher("/voterlog.html").forward(request, response);
        }
        else
        {
           out.println("Password mismatch error!!! Go back and try again");
        }
        
       
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VoterRegSer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VoterRegSer at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
