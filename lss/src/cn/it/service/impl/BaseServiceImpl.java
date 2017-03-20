package cn.it.service.impl;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;

import cn.it.dao.AcademyMapper;
import cn.it.dao.BaseMapper;
import cn.it.dao.ClassesCourseMapper;
import cn.it.dao.ClassesMapper;
import cn.it.dao.CourseMapper;
import cn.it.dao.EvaluateMapper;
import cn.it.dao.MajorMapper;
import cn.it.dao.ScoreMapper;
import cn.it.dao.StudentMapper;
import cn.it.dao.TeacherMapper;
import cn.it.dao.UserMapper;
import cn.it.entity.Page;
import cn.it.service.BaseService;

public class BaseServiceImpl<T> implements BaseService<T> {
	
	@Autowired
	protected ClassesMapper classesMapper;
	@Autowired
	protected ClassesCourseMapper classesCourseMapper;
	@Autowired
	protected ScoreMapper scoreMapper;
	@Autowired
	protected StudentMapper studentMapper;
	@Autowired
	protected TeacherMapper teacherMapper;
	@Autowired
	protected UserMapper userMapper;
	@Autowired
	protected AcademyMapper academyMapper;
	@Autowired
	protected CourseMapper courseMapper;
	@Autowired
	protected MajorMapper majorMapper;
	@Autowired
	protected EvaluateMapper evaluateMapper;
	@Autowired
	protected BaseMapper<T> baseMapper;

	@PostConstruct
	protected void initBaseMapper() throws Exception{
//		System.out.println("=======this :"+this);
//		System.out.println("=======父类基本信息："+this.getClass().getSuperclass());
//		System.out.println("=======父类和泛型的信息："+this.getClass().getGenericSuperclass());
		
		ParameterizedType type =(ParameterizedType) this.getClass().getGenericSuperclass();

		Class clazz = (Class)type.getActualTypeArguments()[0];
//		System.out.println("=======class:"+clazz);

		String localField = clazz.getSimpleName().substring(0,1).toLowerCase()+clazz.getSimpleName().substring(1)+"Mapper";
//		System.out.println("=======localField:"+localField);
		//getDeclaredField:可以使用于包括私有、默认、受保护、公共字段，但不包括继承的字段
		Field field=this.getClass().getSuperclass().getDeclaredField(localField);
		System.out.println("=======field:"+field);
//		System.out.println("=======field对应的对象:"+field.get(this));
		Field baseField = this.getClass().getSuperclass().getDeclaredField("baseMapper");
		
//		System.out.println("=======baseField:"+baseField);
//		System.out.println("=======baseField对应的对象:"+baseField.get(this));	
		//field.get(this)获取当前this的field字段的值。例如：Supplier对象中，baseMapper所指向的对象为其子类型SupplierMapper对象，子类型对象已被spring实例化于容器中		
		baseField.set(this, field.get(this));		
		System.out.println("========baseField对应的对象:"+baseMapper);

	}
	
	@Override
	public int insert(T entity) throws Exception {
		
		return baseMapper.insert(entity);
	}

	@Override
	public int update(T entity) throws Exception {
		
		return baseMapper.update(entity);
	}

	@Override
	public int delete(T entity) throws Exception {
		
		return baseMapper.delete(entity);
	}

	@Override
	public List<T> selectList(T entity) {
		
		return baseMapper.selectList(entity);
	}
	
	

	/*@Override
	public List<T> selectListByPage(String page,String rows,T entity) {
		PageUtil<T> pageUtil = new PageUtil<T>(Integer.parseInt(page),Integer.parseInt(rows));
		return baseMapper.selectListByPage(pageUtil.getMap(entity));
	}*/
	
	

	@Override
	public Page<T> selectPage(Page<T> page) {
		page.setTotal(baseMapper.getCount(page));
		page.setList(baseMapper.selectPageList(page));
		return page;
	}

	
	@Override
	public T selectById(T entity) {
		
		return baseMapper.selectById(entity);
	}
	
	
 /* //总记录数
	public int getCount(){
		return 0;
	}*/

	@Override
	public int deleteList(String[] supIds) throws Exception{
		return baseMapper.deleteList(supIds);
	}

	@Override
	public T select(int id) {
		return baseMapper.select(id);
	}


	
	
}
