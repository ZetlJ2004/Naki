package com.service;

import com.entity.News;
import com.util.DataSourceUtils;
import jakarta.servlet.ServletException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class NewsService {
    public static List<News> listNewses(){
        List<News> Newses = new ArrayList<>();
        String sql = "select * from news ORDER BY insert_time DESC";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()){
            while (rs.next()){
                News news = new News();
                news.setId(rs.getInt("id"));
                news.setTitle(rs.getString("title"));
                news.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                news.setUpdateTime(rs.getObject("update_time", LocalDateTime.class));
                Newses.add(news);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Newses;
    }
    public static void insertNews(String title, String content){
        String sql = "insert into news(title,content) values(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);) {
            ps.setString(1, title);
            ps.setString(2, content);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNewsTitle(int id){
        String sql = "select * from news where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("title");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNewsContent(int id){
        String sql = "select * from news where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("content");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static String findNewsInsertTime(int id){
        String sql = "select * from news where id=" + id;
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getString("insert_time");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void updateNews(String title, String content, int id){
        String sql = "update news set title=?,content=? where id=" + id;
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
