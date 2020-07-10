package com.staff_login.model;

public class StaffLoginService {
		
		private StaffLoginDAO_interface dao;

		public StaffLoginService() {
			
			dao = new StaffLoginDAO();
		}
		
		public StaffLoginVO getOneStaff(String sf_account) {

			return dao.getOneStaff(sf_account);
		}
			

}
