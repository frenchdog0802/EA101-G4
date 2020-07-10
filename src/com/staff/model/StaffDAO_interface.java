package com.staff.model;

import java.util.List;

import com.staff.model.StaffVO;

public interface StaffDAO_interface {

	public void insert(StaffVO staffVO);
    public void update(StaffVO staffVO);
    public void delete(String sq_staff_id);
    public StaffVO findByPrimaryKey(String sq_staff_id);
    public List<StaffVO> getAll();
}
