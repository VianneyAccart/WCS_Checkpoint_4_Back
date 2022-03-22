package com.wildcodeschool.mfpl.service;

import com.wildcodeschool.mfpl.dto.CreateExerciseDto;
import com.wildcodeschool.mfpl.entity.Exercise;
import com.wildcodeschool.mfpl.entity.MuscularGroup;
import com.wildcodeschool.mfpl.repository.ExerciseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;

@Service
public class ExerciseService {

    @Autowired
    ExerciseRepository exerciseRepository;

    @Autowired
    MuscularGroupService muscularGroupService;

    public List<Exercise> getExercises() {
        return exerciseRepository.findAll();
    }

    public Exercise getExerciseById(@PathVariable() Long id) {
        return exerciseRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
    }

    public ResponseEntity<String> createExercise(@Valid CreateExerciseDto createExerciseDto) {
        Exercise exercise = new Exercise();
        exercise.setName(createExerciseDto.getName());
        exercise.setDescription(createExerciseDto.getDescription());
        MuscularGroup muscularGroup = muscularGroupService.getMuscularGroupById(createExerciseDto.getMuscularGroupId());
        exercise.setMuscularGroup(muscularGroup);
        exercise.setCreationDate(new Date());
        exerciseRepository.save(exercise);
        return new ResponseEntity<>("Exercise " + exercise.getName() + " well created", HttpStatus.OK);
    }

    public ResponseEntity<String> modifyExerciseById(@PathVariable() Long id, @Valid CreateExerciseDto createExerciseDto) {
        Exercise exercise = getExerciseById(id);
        exercise.setName(createExerciseDto.getName());
        exercise.setDescription(createExerciseDto.getDescription());
        MuscularGroup muscularGroup = muscularGroupService.getMuscularGroupById(createExerciseDto.getMuscularGroupId());
        exercise.setMuscularGroup(muscularGroup);
        exerciseRepository.save(exercise);
        return new ResponseEntity<>("Exercise well modified", HttpStatus.OK);
    }

    public ResponseEntity<String> deleteExerciseById(@PathVariable() Long id) {
        Exercise exercise = getExerciseById(id);
        exerciseRepository.deleteById(exercise.getId());
        return new ResponseEntity<>("Exercise well deleted", HttpStatus.OK);
    }
}
