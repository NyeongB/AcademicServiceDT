package com.oopsw.dt;

import java.util.Collection;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {
	
	public Collection<SubjectDTO> getCheckApplysubject();
	
	public Collection<ScoreDTO> getScoreInfo();

}
