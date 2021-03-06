package com.epam.practice.testingsystem.data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Question {
    @Builder.Default
    private int id = 0;

    @NonNull
    private String question;

    private int score;

    private List<Answer> answers;
}
