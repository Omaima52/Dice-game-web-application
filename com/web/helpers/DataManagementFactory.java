package com.web.helpers;

import com.web.dao.GameDatabaseManagement;

import jakarta.servlet.ServletContext;

public class DataManagementFactory {

	public static IGameDataManagement getFactory(String pType, ServletContext context) throws GameException {

		if (!"mysql".equals(pType)) {
			return GameContextManagement.getInstance(context);
		}

		return GameDatabaseManagement.getInstance();

	}

}
