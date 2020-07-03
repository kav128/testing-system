package com.epam.practice.testingsystem.data.dao;

import com.epam.practice.testingsystem.data.dto.Question;
import com.epam.practice.testingsystem.data.dto.Test;

import java.util.List;

public interface IQuestionDAO {
    int add(Test test, Question data);
    Question find(int id);
    List<Question> findAllFromTest(int testId);
    List<Question> findAllFromTest(Test test);
    void update(Question data);
    void delete(int id);
    void delete(Question data);
}