package com.web.weight.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.web.weight.model.UserHistory;

@Repository
public interface UserHistoryRepository  extends JpaRepository<UserHistory, Long> {

	List<UserHistory> findAllByUserId(long userId);
	
}
