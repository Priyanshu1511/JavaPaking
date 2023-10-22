/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package serialNo;

import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class SerialNo {

    public String getSerailNo(){
        connection.ConnectionDB get=new ConnectionDB();
        Statement stmt=get.connect();
        String id="";
        try {

            ResultSet rs=stmt.executeQuery("SELECT MAX(ENTRYID) AS d FROM entry");
            while(rs.next()){
                id=""+(rs.getInt("d")+1);
            }

        } catch (Exception e) {
        e.printStackTrace();
        }
        return id;
    }
}
