package com.actreport.model;

import java.util.*;
import com.act.model.ActVO;

public interface ActReportDAO_interface {
	public void insert(ActReportVO actfavorVO);
    public void update(ActReportVO actfavorVO);//後台可以修改狀態
    public void delete(String actfavorid);
    public ActReportVO findByPrimaryKey(String actfavorid);
    public List<ActReportVO> getAll();
  //同時新增活動與主揪者 (實務上並不常用, 但,可用在活動與參加活動明細一次新增成功)
    public void insert2 (ActReportVO actfavorVO , java.sql.Connection con);
    //萬用複合查詢(傳入參數型態Map)(回傳 List)
    //public Set<ActVO> getEmpsByDeptno(Integer actid);
}
