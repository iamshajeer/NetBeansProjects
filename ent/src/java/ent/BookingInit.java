/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ent;

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
 * @author prabeesh
 */
@WebServlet(name = "BookingInit", urlPatterns = {"/BookingInit"})
public class BookingInit extends HttpServlet {

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
        String regid = request.getParameter("regid");
        String name = request.getParameter("name");
        String bookdate = request.getParameter("bookdate");
        String time = request.getParameter("time");
        String doctor = request.getParameter("doctor");
        int si_no = Integer.parseInt(regid);
         SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        Booking book = new Booking(name, bookdate, time, doctor);
        s.save(book);
       
        String email=null;
        int p = 0;
        String query = "from Reg";
         List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
               while(itrator.hasNext())
       {
      // Booking book = (Booking) itrator.next();
       Reg reg = (Reg) itrator.next();
       if(reg.getSiNo()==si_no)
       {
           email = reg.getEmail();
       }
               
       } 
         int token = 0;
         String query1 = "from Booking";
         List list1 = s.createQuery(query1).list();
        Iterator itrator1 = list1.iterator();
               while(itrator1.hasNext())
       {
      // Booking book = (Booking) itrator.next();
       Booking bo = (Booking) itrator1.next();
       if(bo.getName().equals(name))
       {
           token = bo.getToken();
       }
               
       } 
         tr.commit();
        s.close();
      //  out.println(email+" "+token );
    SendMailTLS mail = new SendMailTLS();
        String message  =  "Dear user thank you for booking. your token number is "+token;
        mail.getMessage(message);
        mail.sendMail("dfd", 121, email);
        request.getRequestDispatcher("/bookingcmp.jsp").forward(request, response);        
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingInit</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingInit at " + request.getContextPath() + "</h1>");
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
