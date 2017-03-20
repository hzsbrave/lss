package cn.it.solrdao;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.it.entity.StudentSolr;
import cn.it.entity.vo.StudentSolrVO;



@Repository
public class StudentDaoImpl implements StudentDao{
	@Autowired
	private SolrServer solrServer;
	@Override
	public StudentSolrVO queryStudent(SolrQuery query) throws Exception {
		// TODO Auto-generated method stub
		StudentSolrVO studentSolrVO  = new StudentSolrVO();
		QueryResponse queryResponse = solrServer.query(query);
		SolrDocumentList solrDocumentList = queryResponse.getResults();
		//取查询结果的总数量
		studentSolrVO.setRecordCount(solrDocumentList.getNumFound());
		List<StudentSolr> studentList = new ArrayList<StudentSolr>();
		//遍历查询结果
		for (SolrDocument solrDocument : solrDocumentList) {
			StudentSolr studentSolr = new StudentSolr();
			studentSolr.setSid((Integer)solrDocument.get("sid"));
			studentSolr.setStudent_no((String)solrDocument.get("student_no"));
			studentSolr.setStudent_name((String)solrDocument.get("student_name"));
			studentSolr.setGender((Integer)solrDocument.get("gender"));
			studentSolr.setNatives((String)solrDocument.get("natives"));
			studentSolr.setBirthday((Date)solrDocument.get("birthday"));
			studentSolr.setAddress((String)solrDocument.get("address"));
			studentSolr.setEnter_date((Date)solrDocument.get("enter_date"));
			studentSolr.setPhone((String)solrDocument.get("phone"));
			studentSolr.setQQ((String)solrDocument.get("QQ"));
			studentSolr.setEmail((String)solrDocument.get("email"));
			studentSolr.setNational((String)solrDocument.get("national"));
			studentSolr.setPolitical((String)solrDocument.get("political"));
			studentSolr.setIdCard((String)solrDocument.get("idCard"));
			studentSolr.setFamily_phone((String)solrDocument.get("family_phone"));
			studentSolr.setMiddle_school((String)solrDocument.get("middle_school"));
			studentSolr.setGrade((String)solrDocument.get("grade"));
			studentSolr.setExaminee((String)solrDocument.get("examinee"));
			studentSolr.setClass_id((Integer)solrDocument.get("class_id"));
			studentSolr.setClass_name((String)solrDocument.get("class_name"));
			studentSolr.setStu_count((Integer)solrDocument.get("stu_count"));
			studentSolr.setMajor_id((Integer)solrDocument.get("major_id"));
			studentSolr.setMajor_name((String)solrDocument.get("major_name"));
			studentSolr.setSystem((Integer)solrDocument.get("system"));
			studentSolr.setAcademy_id((Integer)solrDocument.get("academy_id"));
			studentSolr.setAcademy_name((String)solrDocument.get("academy_name"));
			
			studentList.add(studentSolr);
		}
		studentSolrVO.setStudentList(studentList);
		return studentSolrVO;
	}

}
