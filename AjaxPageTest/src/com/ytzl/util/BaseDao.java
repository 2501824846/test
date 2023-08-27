package com.ytzl.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * @BelongsProject: jdbc-dao
 * @BelongsPackage: com.ytzl.util
 * @Author: hua hua
 * @CreateTime: 2022-11-16  11:00
 * @Description: 数据库连接和关闭，以及查询 增删改通用方法
 * @Version: 1.0
 */
public class BaseDao {
    private static String driver;
    private static String url;
    private static String username;
    private static String password;
    private static Connection conn;
    private static ResultSet rs;
    private static PreparedStatement ps;

    static {
        init();
    }

    private static void init() {
        //创建Properties对象用于存储配置
        Properties properties = new Properties();
        String configPath = "database.properties";
        //通过输入流读取配置文件
        InputStream is = BaseDao.class.getClassLoader().getResourceAsStream(configPath);
        try {
            //从输入流当中,通过load方法将配置加载到properties对象内
            properties.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = properties.getProperty("driver");
        url = properties.getProperty("url");
        username = properties.getProperty("username");
        password = properties.getProperty("password");
        System.out.println(driver + "\n" + url + "\n" + username + "\n" + password);
    }


    //数据库连接
    public Connection getConnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //数据库关闭
    public void closeAll() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    //查询通用方法
    public ResultSet myQuery(String sql, Object... params) {
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            if (params != null) {
                for (int i = 0; i < params.length; i++) {
                    ps.setObject(i + 1, params[i]);
                }
            }
            System.out.println(sql);
            rs = ps.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rs;
    }

    //增删改通用方法
    public int myUpdate(String sql, Object... params) {
        int num = 0;
        conn = getConnection();
        try {
            ps = conn.prepareStatement(sql);
            if (params != null) {
                for (int i = 0; i < params.length; i++) {
                    ps.setObject(i + 1, params[i]);
                }
            }
            num = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            closeAll();
        }
        return num;
    }
}
