/**
 * 
 */
package com.web.project.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author 子晨
 *
 */
public interface RePasswordDao {
	
	public void rePassword(@Param("id") int id,@Param("password") String password,@Param("table") String table);
}
