/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package entry;

import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author BIG BANG
 */
public class CheckNo {
    public boolean checkVehicle(String no){


        connection.ConnectionDB get=new ConnectionDB();
        Statement stmt=get.connect();
        try {
            ResultSet rs=stmt.executeQuery("select carNo from entry where carNo='"+no+"'");
            if(rs.next()){
                return true;
                
            }else{
                return false;
            }
        } catch (Exception e) {
        e.printStackTrace();
        }
        return true;
    }

}
