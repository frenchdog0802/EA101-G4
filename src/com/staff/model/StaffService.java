package com.staff.model;

import java.sql.Blob;
import java.sql.Date;
import java.util.List;


public class StaffService {
	
	private StaffDAO_interface dao;

	
	public StaffService() {
		dao = new StaffDAO();
	}
	public StaffVO addStaff(Integer sf_status,String sf_account,String sf_password,String sf_name) {

		StaffVO staffVO = new StaffVO();
		staffVO.setSf_status(sf_status);
		staffVO.setSf_account(sf_account);
		staffVO.setSf_password(sf_password);
		staffVO.setSf_name(sf_name);
		dao.insert(staffVO);

		return staffVO;
	}

	public void addStaff(StaffVO staffVO) {
		dao.insert(staffVO);
	}

	public StaffVO updateStaff(String sq_staff_id,Integer sf_status,String sf_account,String sf_password,String sf_name) {

		StaffVO staffVO = new StaffVO();
		
		staffVO.setSq_staff_id(sq_staff_id);
		staffVO.setSf_status(sf_status);
		staffVO.setSf_account(sf_account);
		staffVO.setSf_password(sf_password);
		staffVO.setSf_name(sf_name);
		dao.update(staffVO);

		return staffVO;
	}

	public void updateStaff(StaffVO staffVO) {
		dao.update(staffVO);
	}

	public void deleteStaff(String sq_staff_id) {
		dao.delete(sq_staff_id);
	}

	public StaffVO getOneStaff(String sq_staff_id) {
		return dao.findByPrimaryKey(sq_staff_id);
	}

	public List<StaffVO> getAll() {
		return dao.getAll();
	}
	public StaffVO findByPrimaryKey(String sq_staff_id) {
		return dao.findByPrimaryKey(sq_staff_id);
	}
}
