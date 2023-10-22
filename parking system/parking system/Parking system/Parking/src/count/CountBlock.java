/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package count;


import connection.ConnectionDB;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author BIG BANG
 */
public class CountBlock {
public String getVacantSlot(String b){

     connection.ConnectionDB get=new ConnectionDB();
            Statement stmt=get.connect();
    int id=0,re=0,r=0;

    try {
        
if(b.equals("AH")){
    id=1;
}else if(b.equals("BH")){
id=2;
}
else if(b.equals("CH")){
id=3;
}
else if(b.equals("DH")){
id=4;
}
else if(b.equals("AL")){
id=5;
}
else if(b.equals("BL")){
id=6;
}
else if(b.equals("CL")){
id=7;
}
else if(b.equals("DL")){
id=8;
}
        
            ResultSet rs=stmt.executeQuery("select count(blockID) as bid from entry where blockID="+id);
            while(rs.next()){
              re=rs.getInt("bid");
            }
            rs.close();
            rs=stmt.executeQuery("select space from block where blockID="+id);
            while(rs.next()){
                r=rs.getInt("space")-re;
            }
            rs.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    

    return ""+r;
}
}
