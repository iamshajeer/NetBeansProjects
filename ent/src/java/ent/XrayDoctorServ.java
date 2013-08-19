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
@WebServlet(name = "XrayDoctorServ", urlPatterns = {"/XrayDoctorServ"})
public class XrayDoctorServ extends HttpServlet {

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
        int regid = Integer.parseInt(request.getParameter("regid"));
        String test_date = null;
        String r1 = null;
        String r2 = null;
        String r3 = null;
        String r4 = null;
        String r5 = null;
        String opinion = null;
         SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        String query = "from XrayTest";
          List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
        // int i = 0;
       while(itrator.hasNext())
       {
         XrayTest test = (XrayTest)itrator.next();
          if(test.getRegId()==regid)
          {
              
              test_date = test.getTestDate();
              r1= test.getRemark1();
              r2 = test.getRemark2();
              r3 = test.getRemark3();
              r4 = test.getRemark4();
              r5 = test.getRemark5();
              opinion = test.getOpinion();
          }
           
       }
        
       tr.commit();
       s.close();
       request.setAttribute("test_date", test_date);
       request.setAttribute("r1", r1);
       request.setAttribute("r2",r2);
       request.setAttribute("r3", r3);
       request.setAttribute("r4", r4);
       request.setAttribute("r5", r5);
       request.setAttribute("opinion", opinion);
       request.getRequestDispatcher("/doctor_xray_view.jsp").forward(request, response);
       
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet XrayDoctorServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet XrayDoctorServ at " + request.getContextPath() + "</h1>");
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
