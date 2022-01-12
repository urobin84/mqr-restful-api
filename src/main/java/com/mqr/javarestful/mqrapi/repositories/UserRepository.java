package com.mqr.javarestful.mqrapi.repositories;

import com.mqr.javarestful.mqrapi.domain.User;
import com.mqr.javarestful.mqrapi.exceptions.EtAuthException;

public interface UserRepository {

    Integer create(String firstName, String lastName, String email, String password) throws EtAuthException;

    User findByEmailAndPassword(String email, String password) throws EtAuthException;

    Integer getCountByEmail(String email);

     User findById(Integer userId);


}
