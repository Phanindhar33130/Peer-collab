package com.klef.jfsd.sdp.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.service.EventService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EventController
{
	@Autowired
	private EventService eventService;
	
	
	@GetMapping("eventreg")
	public ModelAndView eventreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("eventreg");
		return mv;
	}
	
	@PostMapping("insertevent")
    public ModelAndView insertevent(HttpServletRequest request)
    {
       String Eventname = request.getParameter("Eventname");
       String Date = request.getParameter("Date");
       String Domain = request.getParameter("Domain");
       double Points = Double.parseDouble(request.getParameter("Points"));
       String Location = request.getParameter("Location");
      
     
       Event event = new Event();
       event.setEventname(Eventname);
      event.setDate(Date);
      event.setDomain(Domain);
      event.setLocation(Location);
      event.setPoints(Points);
       
       String msg = eventService.EventRegistration(event);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
}
