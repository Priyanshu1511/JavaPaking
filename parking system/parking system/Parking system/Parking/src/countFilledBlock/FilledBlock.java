/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package countFilledBlock;

import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class FilledBlock {

    public String getFilledSlot(int a){
        connection.ConnectionDB get=new ConnectionDB();
        Statement stmt=get.connect();
        String r="";
        try {
            ResultSet rs=stmt.executeQuery("select count(blockID) as abc from entry where blockID="+a);
            while(rs.next()){
                r=rs.getString("abc");
            }
        } catch (Exception e) {

        e.printStackTrace();
        }
        return r;
    }


}
