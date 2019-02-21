package com.recruit.exception;

public class MyException extends RuntimeException {

	private String msg;
	
	public MyException() {}
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public MyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public MyException(String message, Throwable cause) {
		super(cause);
		msg = message;
	}

	public MyException(String message) {
		super();
		msg = message;
	}

	public MyException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
	
	
}

