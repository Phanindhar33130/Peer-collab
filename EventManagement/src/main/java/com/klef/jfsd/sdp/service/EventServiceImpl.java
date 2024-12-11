package com.klef.jfsd.sdp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.repository.EventRepository;

@Service

public class EventServiceImpl implements EventService
{
	@Autowired
	private EventRepository eventRepository;
	
	public String EventRegistration(Event event) 
	{
		eventRepository.save(event);
		return "Event Registered Successfully";
	}
}
