package com.codepuran.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.codepuran.model.Role;
import com.codepuran.model.User;
import com.codepuran.repository.RoleRepository;
import com.codepuran.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public User save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		Set< Role> roles = new HashSet<>();
		roles.add(roleRepository.getOne(2));
		user.setRoles(roles);

		roleRepository.findAll();

		return userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		user.getRoles().forEach(role -> role.getUsers().remove(user));
		user.getRoles().clear();

		// Delete the user and its roles
		userRepository.delete(user);
	}
}