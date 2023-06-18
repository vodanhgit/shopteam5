package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
public class SessionService {
@Autowired
HttpSession session;
@SuppressWarnings("unchecked")
public <T> T get(String name) {
	return (T) session.getAttribute(name);
}
public void set(String name, Object value) {
	session.setAttribute(name, value);
}
public void remove(String name) {
	session.removeAttribute(name);
}
}
