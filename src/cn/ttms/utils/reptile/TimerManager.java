package cn.ttms.utils.reptile;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

public class TimerManager {

    private static final long PERIOD_DAY = 24*60*60;

    public TimerManager() {
        Calendar calendar = Calendar.getInstance();

        calendar.set(Calendar.HOUR_OF_DAY, 22);
        calendar.set(Calendar.MINUTE, 43);
        calendar.set(Calendar.SECOND, 40);

        Date date = calendar.getTime();
        System.out.println(date);
        System.out.println("before 方法比较：" + date.before(new Date()));

        if(date.before(new Date())) {
            date = this.addDay(date, 1);
            System.out.println(date);
        }

        Timer timer = new Timer();

        NFDFlightDataTimerTask task = new NFDFlightDataTimerTask();

        timer.schedule(task, date, PERIOD_DAY);

    }

    public Date addDay(Date date, int num) {
        Calendar startDT = Calendar.getInstance();
        startDT.setTime(date);
        startDT.add(Calendar.DAY_OF_MONTH, num);
        return startDT.getTime();
    }

}
