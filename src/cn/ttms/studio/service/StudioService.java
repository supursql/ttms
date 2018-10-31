package cn.ttms.studio.service;

import cn.ttms.seat.pojo.Seat;
import cn.ttms.seat.service.SeatService;
import cn.ttms.studio.dao.StudioDao;
import cn.ttms.studio.pojo.Studio;

import java.util.List;

public class StudioService {
    private StudioDao studioDao = new StudioDao();
    private SeatService seatService = new SeatService();

    /**
     * 根据sid查询演出厅id和名字
     * @param sid
     * @return
     */
    public Studio selectSid_NameBySid(String sid) {
        return studioDao.selectSid_NameBySid(sid);
    }

    /**
     * 根据名称查询演出厅
     * @param
     * @return
     */
    public Studio findByStudioname(String name) {
        return studioDao.findByStudioname(name);
    }

    /*
    修改演出厅状态
     */
    public void updateStatus(String name, int status) {
        studioDao.updateStatus(name, status);
    }

    /**
     * 展示所有演出厅
     */
    public List<Studio> showAll() {
        return studioDao.showAll();
    }

    /**
     *
     * @param sid
     * @return
     */
    public Studio selectStudioBySid(String sid) {
        return studioDao.selectStudioBySid(sid);
    }

    /**
     *
     * @param studioid
     * @return
     */
    public int selectRowByStudioId(String studioid) {
        return studioDao.selectRowByStudioId(studioid);
    }

    /**
     *
     * @param studioid
     * @return
     */
    public int selectColByStudioId(String studioid) {
        return studioDao.selectColByStudioId(studioid);
    }

    public void addStudio(Studio studio) throws StudioException {

        Studio studio1 = studioDao.selectStudioByName(studio.getName());

        if (studio1 != null) throw new StudioException("演出厅已存在");

        studio.setStatus(1);

        studioDao.addStudio(studio);

        seatService.addSeat(studio.getSid(), studio.getRow(), studio.getCol());
    }
}
