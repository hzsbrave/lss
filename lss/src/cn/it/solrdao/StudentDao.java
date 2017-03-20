package cn.it.solrdao;

import org.apache.solr.client.solrj.SolrQuery;

import cn.it.entity.vo.StudentSolrVO;

public interface StudentDao {
	public StudentSolrVO queryStudent(SolrQuery query) throws Exception;
}
