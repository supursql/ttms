package cn.ttms.user.service;

import cn.ttms.user.dao.UserDao;
import cn.ttms.user.pojo.User;

public class UserService {
    private UserDao userDao = new UserDao();

    public User login(User form, String isAdmin) throws UserException {
        User user = userDao.findByUsername(form.getName());

        if(user == null) throw new UserException("用户名不存在！");
        if(!user.getPassword().equals(form.getPassword()))
            throw new UserException("密码错误！");
//        if(user.getState() == 0) throw new UserException("尚未激活！");

        if (isAdmin == null) {
            return user;
        } else if(isAdmin.equals("isAdmin")) {
            if(userDao.selectTypeByUid(user.getUid()) != 1) {
                throw new UserException("您不是管理员");
            }
        }
        return null;
    }

    public void regist(User form) throws UserException{
        // 校验用户名
        User user = userDao.findByUsername(form.getName());
        if(user != null) throw new UserException("用户名已被注册！");

        // 校验email
        user = userDao.findByEmail(form.getEmail());
        if(user != null) throw new UserException("Email已被注册！");

        // 插入用户到数据库
        userDao.add(form);
    }

    public void active(String code) throws UserException {
        /*
         * 1. 使用code查询数据库，得到user
         */
        User user = userDao.findByCode(code);
        /*
         * 2. 如果user不存在，说明激活码错误
         */
        if(user == null) throw new UserException("激活码无效！");
        /*
         * 3. 校验用户的状态是否为未激活状态，如果已激活，说明是二次激活，抛出异常
         */
        if(user.getState() == 1) throw new UserException("您已经激活过了");

        /*
         * 4. 修改用户的状态
         */
        userDao.updateState(user.getUid(), true);
    }

    /**
     *根据名字查id
     */
    public String selectUidByName(String name) {
        return userDao.selectUidByName(name);
    }

    public User findByUsername(String name) {
        return userDao.findByUsername(name);
    }
}
