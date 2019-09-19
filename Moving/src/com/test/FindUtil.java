package com.test;

import java.util.UUID;

public class FindUtil {

	// Create Temporary Password (Use UUID)
	public static String createKey() {
		// * UUID prints a 32-character string of
		// random numbers lower-case alphabet and the separator(-).
		String uuid;

		// * UUID is Object Type -> To String Type.
		// * UUID has a hyphen -> Change hyphen to empty string.
		uuid = UUID.randomUUID().toString().replaceAll("-", "");

		// 32-character -> 10-character
		uuid = uuid.substring(0, 10);

		return uuid;
	}

}
