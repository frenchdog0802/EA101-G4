package com.actfavor.model;

import java.util.*;
import com.act.model.ActVO;

public interface ActFavorDAO_interface {
	public void insert(ActFavorVO actfavorVO);
    public void update(ActFavorVO actfavorVO);//後台可以修改狀態
    public void delete(String actfavorid);
    public ActFavorVO findByPrimaryKey(String actfavorid);
    public List<ActFavorVO> getAll();
  //同時新增活動與主揪者 (實務上並不常用, 但,可用在活動與參加活動明細一次新增成功)
    public void insert2 (ActFavorVO actfavorVO , java.sql.Connection con);
    //萬用複合查詢(傳入參數型態Map)(回傳 List)
    //public Set<ActVO> getEmpsByDeptno(Integer actid);
}
