package com.mqr.javarestful.mqrapi.services;

import com.mqr.javarestful.mqrapi.domain.User;
import com.mqr.javarestful.mqrapi.exceptions.EtAuthException;

public interface UserService {


    User validateUser(String email, String password) throws EtAuthException;

    User registerUser(String firstName, String lastName, String email, String password) throws EtAuthException;

}
