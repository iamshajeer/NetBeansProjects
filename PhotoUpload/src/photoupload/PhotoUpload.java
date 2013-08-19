/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class PhotoUpload{
	public static boolean dbConnect(String path)throws ClassNotFoundException,SQLException,FileNotFoundException,IOException{
 	Class.forName("com.mysql.jdbc.Driver");
 	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/photodb","root","sha123");
 	Statement statement=connection.createStatement();
 	File file=new File(path);
	byte[] b=new byte[(int)file.length()];
 FileInputStream fileInputStream = new FileInputStream(file) ;
            fileInputStream.read(b);        
    String query="insert into photo values("+3+",'"+b+"')";
    statement.executeUpdate(query);
    return true;

 }

public static void main(String args[])throws IOException,ClassNotFoundException,SQLException{
	BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
	System.out.println("Enter the file path of image:");
	String path=br.readLine();
	if(dbConnect(path)){
		System.out.println("Success fully uploaded image");
	}
 }
}