package cn.it.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.common.SolrInputDocument;


public class ImportDataToSolr {

	public static void importAllItems() throws Exception {
		//创建solrJ客户端
		//在多核导数据的时候要指定核的名字
		SolrServer solrServer = new HttpSolrServer("http://localhost:4414/solr/solrJD");
		//使用JDBC连接数据库
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//加载数据库驱动
		Class.forName("com.mysql.jdbc.Driver");
		//创建数据库连接
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/yzqb2b", "root", "123456");
		//sql语句
		String sql = "select * from products";
		//创建preparedStatement
		preparedStatement = connection.prepareStatement(sql);
		//执行查询
		resultSet = preparedStatement.executeQuery();
		//向solr中导入数据
		while(resultSet.next()) {
			//创建一个文档对象
			SolrInputDocument document = new SolrInputDocument();
			document.addField("pid", resultSet.getString("id"));
			document.addField("name", resultSet.getString("name"));
			document.addField("category", resultSet.getString("category"));
			document.addField("price", resultSet.getString("price"));
			document.addField("content", resultSet.getString("content"));
			document.addField("url", resultSet.getString("url"));
			//向solr中添加记录
			solrServer.add(document);
		}
		//提交修改
		solrServer.commit();
		System.out.println("数据导入完成！");
	}
	
	public static void main(String[] args) throws Exception {
		importAllItems();
	}
}
