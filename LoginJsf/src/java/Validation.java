
import java.io.IOException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.servlet.jsp.JspWriter;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Shajeer
 */
@ManagedBean(name = "Validation")
@RequestScoped
public class Validation {

    String username = "", password = "";
    String original_password = "password", original_uname = "admin";

    public Validation() {
    }

    public void setUsername(String uname) {
        this.username = uname;
    }

    public void setPassword(String pass) {
        this.password = pass;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void checkLogin() throws IOException {
        if (username.equals(original_uname) && password.equals(original_password)) {
            FacesContext.getCurrentInstance().getExternalContext().redirect("valid.xhtml");
        }
        FacesContext.getCurrentInstance().getExternalContext().redirect("invalid.xhtml");
    }
}
