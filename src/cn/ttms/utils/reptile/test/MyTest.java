package cn.ttms.utils.reptile.test;

import cn.ttms.play.dao.PlayDao;
import cn.ttms.play.pojo.Play;
import org.junit.Test;

import java.util.List;

public class MyTest {

    @Test
    public void test01() {
        PlayDao playDao = new PlayDao();
        System.out.println(playDao.selectCount());
    }
}
