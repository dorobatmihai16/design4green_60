package com.design4green.greenitim.repository;

import com.design4green.greenitim.model.ConfirmationToken;
import org.springframework.data.repository.CrudRepository;

public interface ConfirmationTokenRepository extends CrudRepository<ConfirmationToken, String> {

	ConfirmationToken findByConfirmationToken(String confirmationToken);

}
