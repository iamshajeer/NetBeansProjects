package shajeer.mypgm;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
 
public class SessionListener implements HttpSessionListener {
    private List sessions = new ArrayList();
    public SessionListener() {
    }
    public void sessionCreated(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        sessions.add(session.getId());
 
        session.setAttribute("counter", this);
    }
    public void sessionDestroyed(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        sessions.remove(session.getId());
 
        session.setAttribute("counter", this);
    }
    public int getActiveSessionNumber() {
        return sessions.size();
    }
}