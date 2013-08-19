package main;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
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
import org.hibernate.id.Configurable;

/**
 *
 * @author Shajeer
 */
@WebServlet(name = "Registerdept", urlPatterns = {"/Registerdept"})
public class Registerdept extends HttpServlet {

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
        String dptid=request.getParameter("dptid");
        String dptname=request.getParameter("dptname");
        String lname=request.getParameter("iname");
        String lid=request.getParameter("luname");
        String lpassword=request.getParameter("lpwd");
        Long lnumber=Long.parseLong(request.getParameter("lphone"));
        String laddress=request.getParameter("laddress");
        String lmail=request.getParameter("lmail");
        String lplace=request.getParameter("lplace");
        Integer lpin=Integer.parseInt(request.getParameter("lpin"));
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session s=sf.openSession();
        Transaction tr=s.beginTransaction();
        Dptinfo d=new Dptinfo(dptid, dptname, lname, lid, lpassword, lnumber, laddress, lmail, lplace, lpin);
        s.save(d);
        tr.commit();
        s.close();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registerdept</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registerdept at " + request.getContextPath() + "</h1>");
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
