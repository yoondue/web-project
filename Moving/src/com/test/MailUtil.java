package com.test;

import java.util.UUID;

import org.apache.commons.mail.HtmlEmail;

public class MailUtil {

	// Recipient's email, email subject, email contents
	public static void sendMail(String email, String subject, String msg) throws Exception {

		// Mail Server Setting
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; // SMTP Server Name
		int hostPort = 587;
		String hostSMTPId = "cookieyoho1";
		String hostSMTPPw = "네이버 비밀번호";

		// Sender
		String fromEmail = "cookieyoho1@naver.com";
		String fromName = "유니";

		// Send mail (use HtmlEmail class)
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); // Use SSL

			mail.setHostName(hostSMTP);
			mail.setSmtpPort(hostPort);

			mail.setAuthentication(hostSMTPId, hostSMTPPw);
			mail.setStartTLSEnabled(true);
			mail.addTo(email);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
