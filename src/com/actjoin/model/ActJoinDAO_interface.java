package com.actjoin.model;

import java.util.*;
import com.actfavor.model.ActFavorVO;

public interface ActJoinDAO_interface {
	public void insert(ActJoinVO actjoinVO);
    public void update(ActJoinVO actjoinVO);//後台可以修改狀態
    public void delete(String actjoinid);
    public ActJoinVO findByPrimaryKey(String actjoinid);
    public List<ActJoinVO> getAll();
  //同時新增活動與主揪者 (實務上並不常用, 但,可用在活動與參加活動明細一次新增成功)
    public void insert2 (ActJoinVO actjoinVO , java.sql.Connection con);
    //萬用複合查詢(傳入參數型態Map)(回傳 List)
    //public Set<ActVO> getEmpsByDeptno(Integer actid);
}
