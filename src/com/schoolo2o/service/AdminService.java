package com.schoolo2o.service;

import java.util.List;

import com.schoolo2o.pojo.Admininfo;

public interface AdminService {
	public  boolean add(Admininfo admin);        /*增添管理员*/
	public boolean update(Admininfo admin);      /*更新管理员信息*/
	public boolean delete(String adminName);      /*根据管理员的登录名删除管理员*/
	public Admininfo search(String adminName); /*查询是否有这个管理员*/
}
