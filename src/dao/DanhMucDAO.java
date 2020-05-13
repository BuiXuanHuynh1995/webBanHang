package dao;

import dao.impl.IDanhMucDAO;
import model.DBConnect;
import model.DanhMuc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DanhMucDAO implements IDanhMucDAO {
    @Override
    public List<DanhMuc> getListDanhMucCha() {
        Connection connection = DBConnect.getConnection();
        String sql="select * from danhmuc where danh_muc_cha is null; ";
        List<DanhMuc> danhSach= new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                DanhMuc danhMuc = new DanhMuc();
                danhMuc.setMa_danh_muc(rs.getString("ma_danh_muc"));
                danhMuc.setTen_danh_muc(rs.getString("ten_danh_muc"));
                danhMuc.setDanh_muc_cha(rs.getString("danh_muc_cha"));
                danhSach.add(danhMuc);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return danhSach;
    }

    @Override
    public List<DanhMuc> getListDanhMucCon(String ma_danh_muc) {
        Connection connection = DBConnect.getConnection();
        String sql="select * from danhmuc where danh_muc_cha = '"+ma_danh_muc+"'";
        List<DanhMuc> danhSach= new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                DanhMuc danhMuc = new DanhMuc();
                danhMuc.setMa_danh_muc(rs.getString("ma_danh_muc"));
                danhMuc.setTen_danh_muc(rs.getString("ten_danh_muc"));
                danhMuc.setDanh_muc_cha(rs.getString("danh_muc_cha"));
                danhSach.add(danhMuc);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return danhSach;
    }

    public static void main(String[] args) {
        DanhMucDAO dao = new DanhMucDAO();
        System.out.println(dao.getListDanhMucCha().size());
        for (DanhMuc danh_muc_cha:dao.getListDanhMucCha()
             ) {
            System.out.println(danh_muc_cha.getTen_danh_muc());
            for (DanhMuc danh_muc_con: dao.getListDanhMucCon(danh_muc_cha.getMa_danh_muc())
                 ) {
                System.out.println(danh_muc_con.getTen_danh_muc());
            }
        }

    }
}
