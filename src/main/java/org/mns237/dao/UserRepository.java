package org.mns237.dao;

import org.mns237.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<Users, Long> {
	Users findByEmail(String email);
}