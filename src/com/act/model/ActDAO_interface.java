package com.act.model;

import java.util.*;
import com.act.model.ActVO;
import com.actjoin.model.ActJoinVO;

public interface ActDAO_interface {
	public void insert(ActVO actVO);
    public void update(ActVO actVO);//後台可以修改狀態
    public void cancel(String actid);//前台的取消活動使活動狀態改成2
    public void delete(String actid);
    public ActVO findByPrimaryKey(String actid);
    public List<ActVO> getAll();
  //同時新增活動與參加活動的主揪者 (實務上並不常用, 但,可用在活動與參加活動主揪者一次新增成功)
    public void insertWithActJoin(ActVO actVO , List<ActJoinVO> list);
    //萬用複合查詢(傳入參數型態Map)(回傳 List)
    //public Set<ActVO> getJoinActsBySqActId(String actid);
    
}
