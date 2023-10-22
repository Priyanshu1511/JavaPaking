/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package blockID;


import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class BlockID {
public int getBlockID(String bn,String c){
int re=0;
        try {
            connection.ConnectionDB get=new ConnectionDB();
            Statement stmt=get.connect();
            ResultSet rs=stmt.executeQuery("select blockID from block where blockName='"+bn+"' && category='"+c+"'");
            if(rs.next()){
                re=rs.getInt("blockID");
            }
            
    } catch (Exception e) {
    e.printStackTrace();
    }
    return re;
}
}
