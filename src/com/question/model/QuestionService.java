package com.question.model;

import java.util.List;

public class QuestionService {

	private QuestionDAO_interface dao;

	public QuestionService() {
		dao = new QuestionDAO();
	}

	public QuestionVO addQus(String question_title, String question_desciption) {

		QuestionVO questionVo = new QuestionVO();

		questionVo.setQuestion_title(question_title);
		questionVo.setQuestion_description(question_desciption);
		
		dao.insert(questionVo);

		return questionVo;
	}

	public QuestionVO updateQus(String question_title, String question_desciption, String sq_question_id
			) {

		QuestionVO questionVo = new QuestionVO();

		questionVo.setQuestion_title(question_title);
		questionVo.setQuestion_description(question_desciption);
		questionVo.setSq_question_id(sq_question_id);
		
		dao.update(questionVo);

		return questionVo;
	}

	public void deleteQus(String sq_question_id) {
		dao.delete(sq_question_id);
	}

	public QuestionVO getOneQus(String sq_question_id) {
		return dao.findByPrimaryKey(sq_question_id);
	}

	public List<QuestionVO> getAll() {
		return dao.getAll();
	}
}

