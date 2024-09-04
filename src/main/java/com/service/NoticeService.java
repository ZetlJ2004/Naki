package com.service;

import com.entity.Notice;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class NoticeService {
    public static List<Notice> listNotices(){
        List<Notice> Notices = new ArrayList<>();
        String sql = "select * from notices ORDER BY insert_time DESC";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()){
            while (rs.next()){
                Notice notice = new Notice();
                notice.setId(rs.getInt("id"));
                notice.setTitle(rs.getString("title"));
                notice.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                notice.setUpdateTime(rs.getObject("update_time", LocalDateTime.class));
                Notices.add(notice);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Notices;
    }
    public static void insertNotices(String title, String content){
        String sql = "insert into notices(title,content) values(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);) {
            ps.setString(1, title);
            ps.setString(2, content);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNoticesTitle(int id){
        String sql = "select * from notices where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("title");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNoticesContent(int id){
        String sql = "select * from notices where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("content");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNoticesInsertTime(int id){
        String sql = "select * from notices where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("insert_time");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void updateNotices(String title, String content, int id){
        String sql = "update notices set title=?,content=? where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1, title);
            ps.setString(2, content);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
