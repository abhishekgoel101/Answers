package sql;


import java.sql.*;
public class connect {
    
Connection con;
Statement st;
ResultSet rs;
public connect()
{try
{Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql:///discussion","root","");
st=con.createStatement();
}
catch(Exception e)
{System.out.print(e);}
}
public ResultSet execute(String s)
{try
{return(st.executeQuery(s));}
catch(Exception e){}
return(null);
}
public int update(String s)
{try
{ return st.executeUpdate(s);}
catch(Exception e)
{System.out.print(e);}
return(0);

}
public Connection get()
{return(con);}

    
}
