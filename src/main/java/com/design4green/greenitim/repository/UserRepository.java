package com.design4green.greenitim.repository;

import com.design4green.greenitim.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends CrudRepository<User, String> {

	User findByEmailIdIgnoreCase(String emailId);

}
