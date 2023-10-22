/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package addUser;

import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class CheckUsername {

    public boolean checkData(String user){

        connection.ConnectionDB get=new ConnectionDB();
        Statement stmt=get.connect();
        try {
            ResultSet rs=stmt.executeQuery("select username from login where username='"+user+"'");
            if(rs.next()){
                return false;
            }
            else{
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        
        return false;
    }


}
