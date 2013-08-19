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
 * @author PRABEESH
 */
@WebServlet(name = "RegServ", urlPatterns = {"/RegServ"})
public class RegServ extends HttpServlet {

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
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String religion = request.getParameter("religion");
        String dob = request.getParameter("dob");
        int age= Integer.parseInt(request.getParameter("age"));
        String sex = request.getParameter("sex");
        String state = request.getParameter("state");
        String district = request.getParameter("district");
        String address = request.getParameter("address");
        String gardien  = request.getParameter("gardien");
        String mob = request.getParameter("mob");
        String email = request.getParameter("email");
        int reg_id = 0;
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
         Session s= sf.openSession();
         Transaction tx= s.beginTransaction();
         
        Reg user = new Reg(fname, lname, religion, dob, age, sex, state, district, address, gardien, mob, email);
        s.save(user);
            tx.commit();
         String query = "from Reg";
         List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
         while(itrator.hasNext())
       {
         Reg reg = (Reg) itrator.next();
         if(reg.getEmail().equals(email))
         {
           reg_id = reg.getSiNo();
         }
       }
    
        s.close();
        SendMailTLS mail = new SendMailTLS();
        String message  =  "Dear user your user name is " +email+ " and password :"+reg_id;
        mail.getMessage(message);
        mail.sendMail("dfd", 121, email);
        request.getRequestDispatcher("/regcmp.jsp").forward(request, response);
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegServ at " + request.getContextPath() + "</h1>");
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
