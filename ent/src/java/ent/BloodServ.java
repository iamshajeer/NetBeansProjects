/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ent;

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
 * @author prabeesh
 */
@WebServlet(name = "BloodServ", urlPatterns = {"/BloodServ"})
public class BloodServ extends HttpServlet {

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
        String reg_id = request.getParameter("regid");
        String test_date = request.getParameter("test_date");
        String hemo = request.getParameter("hemo");
        String tlc = request.getParameter("tlc");
        String neuro = request.getParameter("neuro");
        String lympho  = request.getParameter("lympho");
        String mono = request.getParameter("mono");
        String baso = request.getParameter("baso");
        String other = request.getParameter("other");
        String rbc = request.getParameter("rbc");
        String platelet = request.getParameter("platelet");
        String blood = request.getParameter("blood");
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        BloodTest test = new BloodTest(reg_id, test_date, hemo, tlc, neuro, lympho, mono, baso, other, rbc, platelet, blood);
        s.save(test);
        tr.commit();
        request.getRequestDispatcher("/lab_main.jsp").forward(request, response);
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BloodServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BloodServ at " + request.getContextPath() + "</h1>");
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
