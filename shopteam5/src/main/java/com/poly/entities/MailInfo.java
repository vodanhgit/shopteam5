package com.poly.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
	String from;
	String to;
	String[] cc;
	String[] bcc;
	String subject;
	String body;
	String[] attachments;

	public MailInfo(String to, String subject, String body) {
		this.from = "SHOPTEAM5 <shopteam5@fpt.edu.vn>";
		this.to = to;
		this.subject = subject;
		this.body = body;
	}
}