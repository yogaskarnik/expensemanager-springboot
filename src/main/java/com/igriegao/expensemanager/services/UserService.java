package com.igriegao.expensemanager.services;

import com.igriegao.expensemanager.domain.User;
import com.igriegao.expensemanager.exceptions.EMAuthException;

public interface UserService {

    User validateUser(String email, String password) throws EMAuthException;

    User registerUser(String firstName, String lastName, String email, String password) throws EMAuthException;
}
