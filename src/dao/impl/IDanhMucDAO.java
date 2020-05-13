package dao.impl;

import model.DanhMuc;

import java.util.ArrayList;
import java.util.List;

public interface IDanhMucDAO {
    public List<DanhMuc> getListDanhMucCha();
    public List<DanhMuc> getListDanhMucCon(String ma_danh_muc);
}
