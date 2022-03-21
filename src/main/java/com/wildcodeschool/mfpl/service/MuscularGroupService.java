package com.wildcodeschool.mfpl.service;

import com.wildcodeschool.mfpl.dto.CreateExerciseDto;
import com.wildcodeschool.mfpl.entity.MuscularGroup;
import com.wildcodeschool.mfpl.repository.MuscularGroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class MuscularGroupService {

    @Autowired
    MuscularGroupRepository muscularGroupRepository;

    public MuscularGroup getMuscularGroup(CreateExerciseDto createExerciseDto) {
        return muscularGroupRepository.findById(createExerciseDto.getMuscularGroupId())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
    }

    public List<MuscularGroup> getMuscularGroups() {
        return muscularGroupRepository.findAll(Sort.by(Sort.Direction.ASC, "name"));
    }
}
