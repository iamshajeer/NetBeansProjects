/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import img.Photo;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


/**
 *
 * @author Shajeer
 */
public class phupl extends HttpServlet {
    private int id=999;

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
        // String urls=request.getParameter("image");
        String url = "C:/Users/Shajeer/Documents/NetBeansProjects/photoupd/src/java/a.jpg";
        byte[] b = new byte[50];
//        b = extractBytes(url);
        BufferedImage image = ImageIO.read(new File(url));
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "png", baos);
        byte[] res = baos.toByteArray();

        //File f=new File("a.jpg");
        //     int id=url.hashCode();
        //BufferedImage img=ImageIO.read(f);
        //ByteArrayOutputStream b=new ByteArrayOutputStream();
        //ImageIO.write(img, "jpg", b);
        //byte[] imginbyte=b.toByteArray();
        SessionFactory 
        sf=new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction t = s.beginTransaction();
        Photo p=new Photo(res);
        s.save(p);
        t.commit();
        s.close();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet phupl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet phupl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    public byte[] extractBytes(String ImageName) throws IOException {
        // open image
        File imgPath = new File(ImageName);
        BufferedImage bufferedImage = ImageIO.read(imgPath);

        // get DataBufferBytes from Raster
        WritableRaster raster = bufferedImage.getRaster();
        DataBufferByte data = (DataBufferByte) raster.getDataBuffer();

        return (data.getData());
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
