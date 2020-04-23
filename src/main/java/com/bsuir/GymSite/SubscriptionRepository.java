package com.bsuir.GymSite;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SubscriptionRepository  extends CrudRepository<Subscription, Integer> {

    List<Subscription> findByPrice(int price);
    List<Subscription> findByDays(int days);
    Optional<Subscription> findById(Long id);

}
