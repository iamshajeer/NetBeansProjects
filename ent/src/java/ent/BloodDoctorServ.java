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
@WebServlet(name = "BloodDoctorServ", urlPatterns = {"/BloodDoctorServ"})
public class BloodDoctorServ extends HttpServlet {

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
        String test_date = null;
        String hemo = null;
        String tlc = null;
        String nutro = null;
        String lympo = null;
        String mono = null;
        String baso = null;
        String other = null;
        String rbc = null;
        String plate = null;
        String blood = null;
         SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        String query = "from BloodTest";
          List list = s.createQuery(query).list();
        Iterator itrator = list.iterator();
        // int i = 0;
       while(itrator.hasNext())
       {
           BloodTest test = (BloodTest) itrator.next();
          if(test.getRegid().equals(regid))
          {
           test_date = test.getTestDate();
           hemo = test.getHemoglobin();
           tlc = test.getTlc();
           nutro = test.getNeutrofill();
           lympo= test.getLymphocytes();
           mono= test.getMonocytes();
           baso= test.getBasophils();
           other = test.getOthercount();
           rbc= test.getTotalRbc();
           plate = test.getPlatlets();
           blood= test.getBloodGroup();
          }
           
       }
       tr.commit();
       s.close();
       request.setAttribute("test_date", test_date);
       request.setAttribute("hemo", hemo);
       request.setAttribute("tlc", tlc);
       request.setAttribute("nutro", nutro);
       request.setAttribute("lympo", lympo);
       request.setAttribute("mono", mono);
       request.setAttribute("baso", baso);
       request.setAttribute("other", other);
       request.setAttribute("rbc", rbc);
       request.setAttribute("plate", plate);
       request.setAttribute("blood", blood);
request.getRequestDispatcher("/doctor_blood_view.jsp").forward(request, response);
        
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BloodDoctorServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BloodDoctorServ at " + request.getContextPath() + "</h1>");
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
