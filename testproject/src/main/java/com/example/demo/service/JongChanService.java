package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.dao.JongChanDAO;
import com.example.demo.model.Runner_data;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class JongChanService {

	private final JongChanDAO dao;

	public int getRunnerTrack(String user_id) {
		return dao.getRunnerTrack(user_id);
	}

	public List<Runner_data> listRunnerTrack(Runner_data runnerdata) {
		return dao.listRunnerTrack(runnerdata);
	}
}
