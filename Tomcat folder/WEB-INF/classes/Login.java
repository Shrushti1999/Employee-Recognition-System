import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import java.sql.*;

@WebServlet("/login")
public class Login extends HttpServlet {

public void doGet(HttpServletRequest request, HttpServletResponse response){
    
    try{
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        
        DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu","hkumar4","othypsoo");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("Select * from login where username='"+user+"' AND passwd='"+pass+"'");
        PrintWriter out=response.getWriter();
        String result="";
        while(rs.next()){
            result+="Yes:"+rs.getObject(3);
            
        }
        if(result.equals("")){
            out.print("No");
        }
        else{
            out.print(result);
        }
    }
    catch(Exception e){}
    }
}
