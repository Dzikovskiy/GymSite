package com.bsuir.GymSite.entities;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "subs")
public class Subscription {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private int price;
    private int days;

    @OneToMany(mappedBy = "subscription", fetch = FetchType.EAGER,
            cascade = CascadeType.ALL)
    private Collection<User> users;

    public Collection<User> getUsers() {
        return users;
    }

    public void setUsers(Collection<User> users) {
        this.users = users;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int username) {
        this.price = username;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }
}
