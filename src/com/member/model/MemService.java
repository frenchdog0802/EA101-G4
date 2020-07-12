package com.member.model;

import java.sql.Blob;
import java.sql.Date;
import java.util.List;

import com.member.model.*;

public class MemService {

	private MemDAO_interface dao;

	public MemService() {
		dao = new MemDAO();
	}
	
	//帳號找員工
	public MemVO getOneMemfromAccount(String member_account) {
		return dao.getOneMemfromAccount(member_account);
	}
	

	public MemVO addMem(String member_account, String password, String m_name, Integer gender, Date birthday,
			String cellphone, String m_email, Integer validation, Date registered,byte[] m_photo,byte[] back_img,
			String nick_name, String address) {

		MemVO memVO = new MemVO();
		memVO.setMember_account(member_account);
		memVO.setPassword(password);
		memVO.setM_name(m_name);
		memVO.setGender(gender);
		memVO.setBirthday(birthday);
		memVO.setCellphone(cellphone);
		memVO.setM_email(m_email);
		memVO.setValidation(validation);
		memVO.setRegistered(registered);
		memVO.setM_photo(m_photo);
		memVO.setBack_img(back_img);
		memVO.setNick_name(nick_name);
		memVO.setAddress(address);
		dao.insert(memVO);

		return memVO;
	}

	public void addMem(MemVO memVO) {
		dao.insert(memVO);
	}

	public MemVO updateMem(String member_account, String password, String m_name, Integer gender, Date birthday,
			String cellphone, String m_email, Date registered,byte[] m_photo,byte[] back_img,
			String nick_name, String address, String sq_member_id) {

		MemVO memVO = new MemVO();
		memVO.setMember_account(member_account);
		memVO.setPassword(password);
		memVO.setM_name(m_name);
		memVO.setGender(gender);
		memVO.setBirthday(birthday);
		memVO.setCellphone(cellphone);
		memVO.setM_email(m_email);
		memVO.setRegistered(registered);
		memVO.setM_photo(m_photo);
		memVO.setBack_img(back_img);
		memVO.setNick_name(nick_name);
		memVO.setAddress(address);
		memVO.setSq_member_id(sq_member_id);
		dao.update(memVO);
		return memVO;
	}
	
	public MemVO updateMem(MemVO memVO) {
		return memVO;
	}

	public void deleteMem(String sq_member_id) {
		dao.delete(sq_member_id);
	}

	public MemVO getOneMem(String sq_member_id) {
		return dao.findByPrimaryKey(sq_member_id);
	}

	public List<MemVO> getAll() {
		return dao.getAll();
	}
	public MemVO findByPrimaryKey(String sq_member_id){
		return dao.findByPrimaryKey(sq_member_id);
	};
		
}
