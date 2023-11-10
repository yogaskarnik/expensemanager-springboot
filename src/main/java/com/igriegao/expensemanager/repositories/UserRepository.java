package com.igriegao.expensemanager.repositories;

import com.igriegao.expensemanager.domain.User;
import com.igriegao.expensemanager.exceptions.EMAuthException;
import org.springframework.stereotype.Service;

public interface UserRepository {

    Integer create(String firstName, String lastName, String email, String password) throws EMAuthException;

    User findByEmailAndPassword(String email, String password) throws EMAuthException;

    Integer getCountByEmail(String email);

    User findById(Integer userId);

}
