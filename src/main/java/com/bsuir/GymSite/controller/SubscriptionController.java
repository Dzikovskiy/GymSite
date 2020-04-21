package com.bsuir.GymSite.controller;

import com.bsuir.GymSite.Subscription;
import com.bsuir.GymSite.SubscriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

@Controller
public class SubscriptionController {
    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @GetMapping("/subscriptions")
    public String main(Model model) {
        Iterable<Subscription> subscriptions = subscriptionRepository.findAll();
        model.addAttribute("subscriptions", subscriptions);

        return "subscriptions";
    }

    @PostMapping("/save")
    public String saveMessage(Subscription subscription) throws IOException {
        subscriptionRepository.save(subscription);
        return "redirect:/subscriptions";
    }
}
