package exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException(){
		ModelAndView mv =new ModelAndView("error");
		mv.addObject("errorTitle","The Page is not constructed");
		mv.addObject("errorDescription","The page you are looking for is not available");
		mv.addObject("Title", "404 -Error Page");
		
		
		return mv;
		
		
	}
}