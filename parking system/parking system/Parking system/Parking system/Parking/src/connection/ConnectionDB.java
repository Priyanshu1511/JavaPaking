/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package connection;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class ConnectionDB {

    Connection con=null;
    Statement stmt=null;

    public Statement connect(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingsystem","root","123");
            stmt=con.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
        }
return stmt;
    }

}
