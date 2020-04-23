package com.bsuir.GymSite;

import com.bsuir.GymSite.Subscription;
import com.bsuir.GymSite.Trainer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TrainerRepository extends CrudRepository<Trainer, Integer> {

    List<Trainer> findByName(String name);
    List<Trainer> findByDescription(String description);
    Optional<Trainer> findById(Long id);

}
