package com.portal.service;

import com.portal.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    public User login(String username, String password) {
        // HARD CODED USERS (No Database)
        if (username.equals("admin") && password.equals("admin123")) {
            return new User("admin", "admin", "admin@studentportal.com");
        }

        if (username.equals("user") && password.equals("user123")) {
            return new User("user", "user", "user@studentportal.com");
        }

        return null;
    }

    public boolean login(User user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
