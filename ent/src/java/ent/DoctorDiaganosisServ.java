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
@WebServlet(name = "DoctorDiaganosisServ", urlPatterns = {"/DoctorDiaganosisServ"})
public class DoctorDiaganosisServ extends HttpServlet {

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
        String condate = request.getParameter("condate");
        String remark = request.getParameter("remark");
        String blood = null;;
        if (request.getParameter("blood")!=null)
        {
            blood = "yes";
        }
        else
        {
            blood = "no";
        }
         String xray = null;;
        if (request.getParameter("xray")!=null)
        {
            xray = "yes";
        }
        else
        {
            xray = "no";
        }
        
         String scan = null;;
        if (request.getParameter("scan")!=null)
        {
            scan = "yes";
        }
        else
        {
            scan = "no";
        }
       
       String reconsolate_week = request.getParameter("reconsolate_week");
       String final_consult = request.getParameter("final_consult");
       String reconsolate_advice_week = request.getParameter("reconsolate_advice_week");
         SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        //DoctorDiaganosis diaganosis = new DoctorDiaganosis(reg_id, condate, remark, blood, xray, scan, reconsolate_week,reconsolate_advice_week, final_consult);
        DoctorDiaganosis diag = new DoctorDiaganosis(Integer.SIZE, condate, remark, blood, xray, scan, reconsolate_week, reconsolate_advice_week, final_consult);
        s.save(diag);
        tr.commit();
        request.getRequestDispatcher("/main_doctor.jsp").forward(request, response);
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DoctorDiaganosisServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DoctorDiaganosisServ at " + request.getContextPath() + "</h1>");
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
