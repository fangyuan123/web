package com.javaBean;

import java.util.ArrayList;
import java.util.List;
public class Db{
	private static List list=new ArrayList();
    //static{list.add(new user("abc","123"));}
    public static List getUser(){
    	return list;
    }
}
