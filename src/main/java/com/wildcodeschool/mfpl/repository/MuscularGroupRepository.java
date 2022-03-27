package com.wildcodeschool.mfpl.repository;

import com.wildcodeschool.mfpl.entity.MuscularGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MuscularGroupRepository extends JpaRepository<MuscularGroup, Long> {
}
