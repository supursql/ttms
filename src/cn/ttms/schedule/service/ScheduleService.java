package cn.ttms.schedule.service;

import cn.itcast.commons.CommonUtils;
import cn.ttms.schedule.dao.ScheduleDao;
import cn.ttms.schedule.pojo.Schedule;
import cn.ttms.studio.pojo.Studio;
import cn.ttms.studio.service.StudioService;
import cn.ttms.ticket.pojo.Ticket;
import cn.ttms.ticket.service.TicketService;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ScheduleService {

    private ScheduleDao scheduleDao = new ScheduleDao();
    private StudioService studioService = new StudioService();
    private TicketService ticketService = new TicketService();
    private int[][] seatArray;


    /**
     * 根据pid查询演出计划
     * @param pid
     * @return
     */
    public List<Schedule> selectOnPid(String pid) {

        List<Schedule> scheduleList = scheduleDao.selectOnPid(pid);

        for (Schedule schedule : scheduleList) {
            String sid = schedule.getSid();
            String studioid = scheduleDao.selectStudioIdOnSid(sid);
            schedule.setStudio(studioService.selectSid_NameBySid(studioid));
        }

        return scheduleList;
    }

    /**
     *
     * @param sid
     * @return
     */
    public Schedule selectScheduleById(String sid) {

        ticketService.updateTicketStatus();

        Schedule schedule = scheduleDao.selectScheduleById(sid);

        String studioid = scheduleDao.selectStudioIdOnSid(sid);
        schedule.setStudio(studioService.selectStudioBySid(studioid));
        int row = studioService.selectRowByStudioId(studioid);
        int col = studioService.selectColByStudioId(studioid);

        seatArray = new int[row][col];

        List<Ticket> ticketList = ticketService.showAllByScheduleId(sid);

        for (Ticket ticket : ticketList) {
            int rowTicket = ticket.getRow();
            int colTicket = ticket.getCol();
            int status = ticket.getStatus();

            seatArray[rowTicket-1][colTicket-1] = status;
        }

        schedule.setSeatArray(seatArray);

        return schedule;
    }


    public String selectStudioIdOnSid(String sid) {
        return scheduleDao.selectStudioIdOnSid(sid);
    }

    public void addSchedule(Schedule schedule, String pid, String studioName, int duration) throws ScheduleException {
        Studio studio = studioService.findByStudioname(studioName);

        List<Schedule> scheduleList = scheduleDao.selectOnStudioId(studio.getSid());

        Date date = schedule.getStartTime();

        for (Schedule schedule1 : scheduleList) {
            Date date1 = schedule1.getStartTime();
            long timeout = Math.abs(date.getTime() - date1.getTime());

            if (timeout < duration*60*1000+30*60*1000) {
                throw new ScheduleException("时间冲突,请重新添加");
            }
        }

        schedule.setSid(CommonUtils.uuid());

        Date startTime = schedule.getStartTime();
        Date endTime = new Date(startTime.getTime() + duration * 60 * 1000);

        schedule.setStartTime(new java.sql.Timestamp(startTime.getTime()));
        schedule.setEndTime(new java.sql.Timestamp(endTime.getTime()));

        schedule.setStatus(0);

        scheduleDao.addSchedule(schedule, pid, studio.getSid());
        ticketService.addTicket(schedule.getSid());
    }

    public List<Schedule> selectOnStudioName(String name) {
        Studio studio = studioService.findByStudioname(name);

        return scheduleDao.selectOnStudioId(studio.getSid());
    }
}
