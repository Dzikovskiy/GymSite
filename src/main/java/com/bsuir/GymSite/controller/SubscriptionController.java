package com.bsuir.GymSite.controller;

import com.bsuir.GymSite.Subscription;
import com.bsuir.GymSite.SubscriptionRepository;
import com.bsuir.GymSite.User;
import com.bsuir.GymSite.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Calendar;

@Controller
public class SubscriptionController {
    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/subscriptions")
    public String main(Model model) {
        Iterable<Subscription> subscriptions = subscriptionRepository.findAll();
        model.addAttribute("subscriptions", subscriptions);

        return "subscriptions";
    }

    @PostMapping("/save")
    public String saveSubscription(Subscription subscription) {
        subscriptionRepository.save(subscription);
        return "redirect:/subscriptions";
    }

    @PostMapping("/getSubscription")
    public String getSubscription(@AuthenticationPrincipal User user, Subscription subscription) {
        //Optional<Subscription> subscription = subscriptionRepository.findById(Math.toIntExact(id));

        Subscription subscription_from_db = subscriptionRepository.findById(subscription.getId()).get();

        user.setSubscription(subscription_from_db);// поменяется ли так значение юзер или нужно доставть через бд
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DAY_OF_MONTH, subscription_from_db.getDays());
        user.setSubs_end_date(new java.sql.Date(cal.getTime().getTime()));
        userRepository.save(user);
      //  subscriptionRepository.save(subscription);

        return "redirect:/lobby";
    }

    @GetMapping("/lobby")
    public String getLobby(@AuthenticationPrincipal User user, Model model) {

        model.addAttribute("user", user);
        model.addAttribute("sub", user.getSubscription());

        return "lobby";
    }


}
