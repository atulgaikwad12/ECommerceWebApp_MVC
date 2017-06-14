package com.atul.FrontEnd.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtility {
private static final String ABS_PATH = "Z:\\Eclipse-project\\FoodOrdering\\FrontEnd\\src\\main\\webapp\\assets\\images\\";
private static String REAL_PATH = "";
public static void uploadFile(HttpServletRequest request, MultipartFile file, String code) {
	// get real path
	REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/images/");
	
	//to make sure all directories exists
	// create directory if not
	if(!new File(ABS_PATH).exists()){
		new File(ABS_PATH).mkdirs();
	}
	
	if(!new File(REAL_PATH).exists()){
		new File(REAL_PATH).mkdirs();
	}
	
	try{
		//for server upload
		file.transferTo(new File(REAL_PATH + code + ".jpg"));
		//for project directory
		file.transferTo(new File(ABS_PATH + code + ".jpg"));
	}
	catch(IOException ex){
		
	}
}
}
