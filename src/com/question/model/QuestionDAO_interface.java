package com.question.model;

import java.util.*;

public interface QuestionDAO_interface {
	public void insert(QuestionVO questionVo);
	public void update(QuestionVO questionVo);
	public void delete(String question_title);
	public QuestionVO findByPrimaryKey(String sq_question_id);
	public List<QuestionVO> getAll();
	
	

}
