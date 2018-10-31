package cn.ttms.play.service;

import cn.ttms.play.pojo.Play;
import cn.ttms.play.dao.PlayDao;
import cn.ttms.schedule.pojo.Schedule;
import cn.ttms.schedule.service.ScheduleService;

import java.util.List;

public class PlayService {
    private PlayDao playDao = new PlayDao();
    private ScheduleService scheduleService = new ScheduleService();

    /**
     * 查询所有剧目信息
     * @return
     */
    public List<Play> showAll() {
        List<Play> playList = playDao.showAll();

        for (Play play : playList) {
            play.setDate(new java.util.Date(play.getDate().getTime()));
        }

        return playList;
    }

    /**
     * 查询单个剧目
     * @param pid
     * @return
     */
    public Play selectOne(String pid) {
        Play play = playDao.selectOne(pid);
        play.setScheduleList(scheduleService.selectOnPid(pid));

        play.setDate(new java.util.Date(play.getDate().getTime()));

        for (Schedule schedule : play.getScheduleList()) {
            schedule.setStartTime(new java.util.Date(schedule.getStartTime().getTime()));
            schedule.setEndTime(new java.util.Date(schedule.getEndTime().getTime()));
        }

        return play;
    }

    /**
     *查询当前演出剧目的前5条
     * @return
     */
    public List<Play> showAllLimitOnCurrent() {
        List<Play> playList = playDao.showAllLimitOnCurrent();

        for (Play play : playList) {
            play.setDate(new java.util.Date(play.getDate().getTime()));
        }

        return playList;
    }

    /**
     *查询未上映剧目的前五条
     * @return
     */
    public List<Play> showAllLimitOnSoon() {
        List<Play> playList = playDao.showAllLimitOnSoon();

        for (Play play : playList) {
            play.setDate(new java.util.Date(play.getDate().getTime()));
        }

        return playList;
    }

    public void addPlay(Play play) throws PlayException {

        Play play1 = playDao.selectPlayByshowName(play.getShowName());
        if (play1 != null) {
            throw new PlayException("电影名已存在");
        }

        play.setStatus(0);

        int sort = (int)playDao.selectCount() + 1;
        play.setSort(sort);

        playDao.addPlay(play);
    }

    public void modifyPlay(Play play) {
        playDao.motifyPlay(play);
    }

    public void dropOffPlay(String pid) {
        playDao.dropOffPlay(pid);
    }

}
