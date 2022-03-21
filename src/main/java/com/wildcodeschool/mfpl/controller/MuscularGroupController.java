package com.wildcodeschool.mfpl.controller;

import com.wildcodeschool.mfpl.entity.MuscularGroup;
import com.wildcodeschool.mfpl.service.MuscularGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/v1")
public class MuscularGroupController {

    @Autowired
    MuscularGroupService muscularGroupService;

    @GetMapping("/muscular-groups")
    public List<MuscularGroup> getMuscularGroups() {
        return muscularGroupService.getMuscularGroups();
    }
}
