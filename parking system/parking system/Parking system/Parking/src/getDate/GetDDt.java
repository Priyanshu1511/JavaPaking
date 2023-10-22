/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package getDate;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


/**
 *
 * @author BIG BANG
 */
public class GetDDt {
Calendar currentDate = Calendar.getInstance();
	SimpleDateFormat formatter=
			  new SimpleDateFormat("yyyy/MM/dd");
	SimpleDateFormat timer=
			  new SimpleDateFormat(" HH:mm:ss");


	public String getDate(){
		String date = formatter.format(currentDate.getTime());
		return date;
	}

	public String getTime(){
		String time = timer.format(currentDate.getTime());
		return time;
	}

	public long getDays(Date calUpdated){
		long daysBetween = 0;
		if(calUpdated!=null){
		try{
			Date currentdate = new Date();
			calUpdated.UTC(2008, 01, 01,12,12,12);

			long currentDateMilliSec = currentdate.getTime();
			long updateDateMilliSec = calUpdated.getTime();
			daysBetween = (currentDateMilliSec - updateDateMilliSec) / (24 * 60 * 60 * 1000);


		}
		catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}

		  return daysBetween;
		}
		else{
			return 0;
		}
		}
}
