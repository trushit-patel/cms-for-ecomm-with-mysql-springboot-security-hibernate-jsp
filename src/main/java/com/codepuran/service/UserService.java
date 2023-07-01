package com.codepuran.service;

import com.codepuran.model.User;

public interface UserService {

  User save(User user);
  void delete(User user);
  User findByUsername(String username);
}
