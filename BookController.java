package com.xbbnhfk.book;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
@RestController  
@RequestMapping(value = "/books")

public class BookController {

	  @RequestMapping(value = "/all" , method = RequestMethod.GET )
	  public List<BookBean> getAllBooks() {
  	BookDao bookDao=new BookDao();
		ArrayList list = bookDao.viewBook();
		
		
  	return list;
    }
	  
	 /* 
	  @RequestMapping(value="/books",method=RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE, produces={ MediaType.APPLICATION_JSON_VALUE})

	  public Test createTest(@RequestBody Test testObj)
	  {
	  }*/

	  
	/*  @RequestMapping(value="/insert",method=RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE, produces={ MediaType.APPLICATION_JSON_VALUE})

      public BookBean insertDoctor(@RequestBody BookBean bookBean)

      {

		  BookDao bookDao=new BookDao();

		  bookDao.insertBook(bookBean);

              return bookBean;

      }
*/
  
	  
	  
	  
	  
	  
	  

}
