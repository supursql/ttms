package cn.ttms.seat.service;

import cn.itcast.commons.CommonUtils;
import cn.ttms.sale.pojo.Sale;
import cn.ttms.seat.dao.SeatDao;
import cn.ttms.seat.pojo.Seat;
import cn.ttms.studio.service.StudioService;

import java.util.List;

public class SeatService {

    private SeatDao seatDao = new SeatDao();
    private Seat seat = new Seat();

    /**
     * 添加座位
     * @param studioid
     */
    public void addSeat(String studioid, int row, int col) {

        for (int i = 1 ; i <= row; i++) {
            for (int j = 1; j <= col; j++) {
                Seat seat = new Seat();
                seat.setSid(CommonUtils.uuid());
                seat.setRow(i);
                seat.setCol(j);
                seat.setStatus(1);
                seatDao.addSeat(seat, studioid);
            }
        }
    }

    public void modifySeat(String[] seatArray, String studioid, int status) {
        for (String seat : seatArray) {
            int row = Integer.parseInt(seat.split(",")[0]);
            int col = Integer.parseInt(seat.split(",")[1]);

            seatDao.modifySeat(row, col, status);
        }
    }

    /**
     * 查询所有状态为1的座位
     * @param studioid
     * @return
     */
    public List<Seat> showAllStatusInOne(String studioid) {
        return seatDao.showAllStatusInOne(studioid);
    }

    /**
     * 根据行和列查询座位的id
     * @param row
     * @param col
     * @return
     */
    public String selectSeatidOnRowAndCol(int row, int col) {
        return seatDao.selectSeatidOnRowAndCol(row, col);
    }

    public int[][] showAllSeat(String studioid, int studioRow, int studioCol) {
        List<Seat> seatList = showAllStatusInOne(studioid);

        int[][] seatArray = new int[studioRow][studioCol];

        for (Seat seat : seatList) {
            int row = seat.getRow();
            int col = seat.getCol();

            seatArray[row-1][col-1] = 1;
        }

        return seatArray;
    }


}
