package com.xbbnhfk.profile;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.derby.iapi.services.io.NewByteArrayInputStream;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xbbnhfk.profile.ConnectionManager;
import com.xbbnhfk.profile.ProfileBean;import com.xbbnhfk.profile.ProfileDao;
public class RegisterController {

	@RestController
	@RequestMapping(value = "/userdetails")
	public class SignUpController {
	                ProfileDao ud=new ProfileDao();
	                @RequestMapping(value = "/insert", method = RequestMethod.PUT)
	                public int userdetails(@RequestBody ProfileBean b) throws SQLException 
	                {
	                                
	                                int d=0;
	                                d=ud.createProfile(b);
	                                return d;
	                
	                }
	                }



}
