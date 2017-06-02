/**
 * 
 */
package com.web.project.dao;


import java.util.ArrayList;

import com.web.project.model.expert.ExpertFee;
import com.web.project.model.expert.ExpertInfo;
import com.web.project.model.maker.MakerCommonWorks;

/**
 * @author Administrator
 *
 */
public interface ExpertFeeDao {
	
	public void insertExpertFee(ArrayList<ExpertFee> expertFees);
	
	public ArrayList<ExpertFee> getExpertFeeInfoList();
	
	public ArrayList<ExpertFee> getExpertFeeWorkList();

	public ArrayList<ExpertFee> getExpertFeeMKWorkList();
	
	public ArrayList<ExpertFee> getExpertFeeEKWorkList();
	
	public void updateExpertFee(int id);
}
