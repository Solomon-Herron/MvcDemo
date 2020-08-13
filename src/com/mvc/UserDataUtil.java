package com.mvc;

import java.util.ArrayList;
import java.util.List;
//this class is the model. Calls should be made to database/api
public class UserDataUtil {

    public static List<User> getUsers(){
        List<User> users = new ArrayList<>();
        users.add(new User("Solomon", "Herron", "solomonherron@gmail.com"));
        users.add(new User("Destiny", "Akinwande", "desitiny.akinwande@gmail.com"));
        users.add(new User("Dom", "Herron", "domherron@gmail.com"));

        return users;
    }

}
