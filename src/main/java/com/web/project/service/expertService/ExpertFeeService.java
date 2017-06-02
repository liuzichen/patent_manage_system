/**
 * 
 */
package com.web.project.service.expertService;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.project.dao.ExpertFeeDao;
import com.web.project.model.expert.ExpertFee;

/**
 * @author Administrator
 *
 */
@Service
public class ExpertFeeService {
	@Autowired
	ExpertFeeDao expertFeeDao;
	public void insertExpertFee(ArrayList<ExpertFee> expertFees){
		expertFeeDao.insertExpertFee(expertFees);
	}
	
	public ArrayList<ExpertFee> getExpertFeeInfoList(){
		return expertFeeDao.getExpertFeeInfoList();
	}
	
	public ArrayList<ExpertFee> getExpertFeeWorkList(){
		return expertFeeDao.getExpertFeeWorkList();
	}
	public ArrayList<ExpertFee> getExpertFeeMKWorkList(){
		return expertFeeDao.getExpertFeeMKWorkList();
	}
	public ArrayList<ExpertFee> getExpertFeeEKWorkList(){
		return expertFeeDao.getExpertFeeEKWorkList();
	}
	
	public void updateExpertFee(int id){
		expertFeeDao.updateExpertFee(id);
	}
}
