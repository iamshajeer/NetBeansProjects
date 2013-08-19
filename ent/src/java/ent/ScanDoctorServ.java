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
@WebServlet(name = "ScanDoctorServ", urlPatterns = {"/ScanDoctorServ"})
public class ScanDoctorServ extends HttpServlet {

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
        String scan_date = null;
        String scan_name = null;
        String r1 = null;
        String r2= null;
        String r3 = null;
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        String query = "from ScanTest";
        List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
        // int i = 0;
       while(itrator.hasNext())
       {
           ScanTest test = (ScanTest) itrator.next();
          if(test.getRegId().equals(regid))
          {
            scan_date = test.getScanDate();
            scan_name = test.getScanName();
            r1 = test.getRemark1();
            r2 = test.getRemark2();
            r3 = test.getRemark3();
          }
       }
        tr.commit();
        s.close();
        request.setAttribute("scan_date", scan_date);
        request.setAttribute("scan_name", scan_name);
        request.setAttribute("r1", r1);
        request.setAttribute("r2", r2);
        request.setAttribute("r3", r3);
        request.getRequestDispatcher("/doctor_scan_view.jsp").forward(request, response);
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ScanDoctorServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ScanDoctorServ at " + request.getContextPath() + "</h1>");
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
