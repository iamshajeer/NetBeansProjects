/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package voting;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
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
@WebServlet(name = "UserLogServ", urlPatterns = {"/UserLogServ"})
public class UserLogServ extends HttpServlet {

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
        String uname = request.getParameter("uname");
        String pass  = request.getParameter("pwd");
         SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
         String query = "from VoterReg";
         List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
       int flag= 0;
       while(itrator.hasNext())
       {
           VoterReg vo = (VoterReg) itrator.next();
           if(vo.getUserName().equals(uname))
           {
            if(vo.getPass().equals(pass))
            {
                flag = 1;
            }
               
           }
       }
       tr.commit();
       s.close();
       if(flag==1)
       {
           request.getRequestDispatcher("/voterlog.html").forward(request, response);
       }
       else
       {
           out.println("<h3><center><b>Login Faild. !!!! Go back and try again.</b></center></h3>");
       }
        try {
            /* TODO output your page here. You may use following sample code. */
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserLogServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserLogServ at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>"); */
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
