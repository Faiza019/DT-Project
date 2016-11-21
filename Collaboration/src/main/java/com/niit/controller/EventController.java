package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.niit.dao.EventDao;
import com.niit.model.Blog;
import com.niit.model.Event;
import com.niit.model.UsersDetail;

@RestController
public class EventController {
	@Autowired
	EventDao eventDao;
	Event event;
//	  //-------------------Retrieve All Users--------------------------------------------------------
//	 @RequestMapping(value = "/listEvents/", method = RequestMethod.GET)
//	    public ResponseEntity<List<Event>> listAllEvents() {
//	     List<Event> events = eventDao.getAllEvents();
//	        if(events.isEmpty()){
//	            return new ResponseEntity<List<Event>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
//	        }
//	        return new ResponseEntity<List<Event>>(events, HttpStatus.OK);
//	    }	 
//
////-------------------Create a User--------------------------------------------------------
//
//@RequestMapping(value = "/event/", method = RequestMethod.POST)
//public ResponseEntity<Void> createEvent(@RequestBody Event event,UriComponentsBuilder ucBuilder) {
//    System.out.println("Creating event " + event.getTitle());
//
//    eventDao.saveOrUpdateEvent(event);
//
//    HttpHeaders headers = new HttpHeaders();
//    headers.setLocation(ucBuilder.path("/event/{id}").buildAndExpand(event.getTitle()).toUri());
//    return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
//}
//
//
////-------------------Retrieve Single User--------------------------------------------------------
// 
//@RequestMapping(value = "/event/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//public ResponseEntity<Event> getUser(@PathVariable("id") String id) {
//    System.out.println("Fetching User with id " + id);
//    
//    Event event = eventDao.getEventById(id);
//   
// 
//    if (event == null) {
//        System.out.println("User with id " + id + " not found");
//        return new ResponseEntity<Event>(HttpStatus.NOT_FOUND);
//    }
//    System.out.println(event.getEventId() + "\t" + event.getDescription() + "\t"+ "\t" + event.getTitle());
//    return new ResponseEntity<Event>(event, HttpStatus.OK);
//}

	
	
	
	@RequestMapping(value="/addEvent",headers="Accept=application/json",method=RequestMethod.POST)
	public void addEvent(@RequestBody Event event)
	{
		/*int userId=(Integer) session.getAttribute("loggedInUserId");
		event.setUsersID(userId);
		
		System.out.println("user id inside event is "+userId);
		*/
		eventDao.saveOrUpdateEvent(event);
	}
	@RequestMapping(value="/viewEvents",headers="Accept=application/json",method=RequestMethod.GET)
	public List<Event> viewEvents()
	{
		return eventDao.getAllEvents();
	}
	@RequestMapping(value="/updateEvent",headers="Accept=application/json",method=RequestMethod.PUT)
	public void updateEvent(@RequestBody Event event)
	{
		System.out.println("Inside update event");
		eventDao.saveOrUpdateEvent(event);
	}
	@RequestMapping(value="/deleteEvent/{id}",headers="Accept=application/json",method=RequestMethod.DELETE)
	public void deleteEvent(@PathVariable String id)
	{
		eventDao.delete(id);
	}

	
	
}