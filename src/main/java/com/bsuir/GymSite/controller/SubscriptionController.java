package com.bsuir.GymSite.controller;

import com.bsuir.GymSite.entities.Subscription;
import com.bsuir.GymSite.entities.Trainer;
import com.bsuir.GymSite.entities.User;
import com.bsuir.GymSite.repository.SubscriptionRepository;
import com.bsuir.GymSite.repository.TrainerRepository;
import com.bsuir.GymSite.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

@Controller
public class SubscriptionController {
    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Value("${upload.path}")
    private String uploadPath;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TrainerRepository trainerRepository;

    @GetMapping("/subscriptions")
    public String mainSubscriptions(Model model) {
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

        Subscription subscription_from_db = subscriptionRepository.findById(subscription.getId()).get();
        user.setSubscription(subscription_from_db);
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DAY_OF_MONTH, subscription_from_db.getDays());
        user.setSubs_end_date(new java.sql.Date(cal.getTime().getTime()));

        userRepository.save(user);

        return "redirect:/lobby";
    }

    @GetMapping("/lobby")
    public String getLobby(@AuthenticationPrincipal User user, Model model) {

        model.addAttribute("user", user);
        model.addAttribute("sub", user.getSubscription());
        model.addAttribute("trainer", user.getTrainer());

        return "lobby";
    }

    @PostMapping("/saveTrainer")
    public String saveTrainer(Trainer trainer, @RequestParam("file") MultipartFile file) throws IOException {

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String uuidFile = UUID.randomUUID().toString();
            String resultFileName = uuidFile + "." + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + "/" + resultFileName));
            trainer.setFilename(resultFileName);
        }
        trainerRepository.save(trainer);
        return "redirect:/trainers";
    }

    @GetMapping("/trainers")
    public String mainTrainers(Model model) {
        Iterable<Trainer> trainers = trainerRepository.findAll();
        model.addAttribute("trainers", trainers);

        return "trainers";
    }

    @PostMapping("/getTrainer")
    public String getTrainer(@AuthenticationPrincipal User user, Trainer trainer) {

        Trainer trainer_from_db = trainerRepository.findById(trainer.getId()).get();
        user.setTrainer(trainer_from_db);
        userRepository.save(user);

        return "redirect:/lobby";
    }

}
