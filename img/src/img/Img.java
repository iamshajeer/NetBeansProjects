/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package img;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import pojo.Photo;

/**
 *
 * @author Shajeer
 */
public class Img {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException, IOException {
        Session session=new H
        session.beginTransaction();
        
        //save image into database
    	File file = new File("F://fx/love/asd.jpg");
        byte[] bFile = new byte[(int) file.length()];
	        FileInputStream fileInputStream = new FileInputStream(file);
	        //convert file into array of bytes
	        fileInputStream.read(bFile);
	        fileInputStream.close();
                Photo p=new Photo(bFile);
        Serializable save = session.save(p);
                session.close();
                
}
}
