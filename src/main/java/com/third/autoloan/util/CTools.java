package com.third.autoloan.util;

public class CTools {

	public  static  boolean checkStringNull(String string) {
		
		if(string == null || ("").equals(string.trim()))
			return false;
		return true;
	}
}
