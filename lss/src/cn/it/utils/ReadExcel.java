/**
 * 
 */
package cn.it.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import cn.it.entity.Student;

public class ReadExcel {

	public List<Student> readXls(InputStream is) throws IOException, ParseException {
		//InputStream is = new FileInputStream(file_path);
		XSSFWorkbook xssfWorkbook = new XSSFWorkbook(is);
		Student student = null;
		List<Student> list = new ArrayList<Student>();
		for (int numSheet = 0; numSheet < xssfWorkbook.getNumberOfSheets(); numSheet++) {
			XSSFSheet xssfsheet = xssfWorkbook.getSheetAt(numSheet);
			if (xssfsheet == null) {
				continue;
			}
			for (int rowNum = 1; rowNum <= xssfsheet.getLastRowNum(); rowNum++) {
				XSSFRow xssfRow = xssfsheet.getRow(rowNum);
				if (xssfRow != null) {
					student = new Student();
					XSSFCell id = xssfRow.getCell(0);
					XSSFCell user_id = xssfRow.getCell(1);
					XSSFCell student_name = xssfRow.getCell(2);
					XSSFCell student_no = xssfRow.getCell(3);
					XSSFCell gender = xssfRow.getCell(4);
					XSSFCell natives = xssfRow.getCell(5);
					XSSFCell birthday = xssfRow.getCell(6);
					XSSFCell address = xssfRow.getCell(7);
					XSSFCell enter_date = xssfRow.getCell(8);
					XSSFCell phone = xssfRow.getCell(9);
					XSSFCell QQ = xssfRow.getCell(10);
					XSSFCell email = xssfRow.getCell(11);
					XSSFCell national = xssfRow.getCell(12);
					XSSFCell political = xssfRow.getCell(13);
					XSSFCell idCard = xssfRow.getCell(14);
					XSSFCell family_phone = xssfRow.getCell(15);
					XSSFCell middle_school = xssfRow.getCell(16);
					XSSFCell grade = xssfRow.getCell(17);
					XSSFCell class_id = xssfRow.getCell(18);
					XSSFCell examinee = xssfRow.getCell(19);
					XSSFCell password = xssfRow.getCell(20);
					XSSFCell token = xssfRow.getCell(21);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

				/*	String idstr = getValue2(id);
					if (!idstr.equals("")) {
						student.setId(Integer.parseInt(idstr));
					}*/

					String useridstr = getValue2(user_id);
					if (!useridstr.equals("")) {
						student.setUserId(Integer.parseInt(useridstr));
					}

					student.setStudentName(getValue2(student_name));

					student.setStudentNo(getValue2(student_no));

					String genderstr = getValue2(gender);
					if (!genderstr.equals("")) {
						student.setGender(Integer.parseInt(genderstr));
					}

					student.setNatives(getValue2(natives));

					String birthdaystr = getValue2(birthday);
					if (!birthdaystr.equals("")) {
						student.setBirthday(sdf.parse(birthdaystr));
					}

					student.setAddress(getValue2(address));

					String enterdatestr = getValue2(enter_date);
					if (!enterdatestr.equals("")) {
						student.setEnterDate(sdf.parse(enterdatestr));
					}

					student.setPhone(getValue2(phone));

					student.setQq(getValue2(QQ));

					student.setEmail(getValue2(email));

					student.setNational(getValue2(national));

					student.setPolitical(getValue2(political));

					student.setIdcard(getValue2(idCard));

					student.setFamilyPhone(getValue2(family_phone));

					student.setMiddleSchool(getValue2(middle_school));

					student.setGrade(getValue2(grade));

					String classidstr = getValue2(class_id);
					if (!classidstr.equals("")) {
						student.setClassId(Integer.parseInt(classidstr));
					}

					student.setExaminee(getValue2(examinee));

					student.setPassword(getValue2(password));

					student.setToken(getValue2(token));

					list.add(student);
				}
			}
		}
		return list;
	}

	public List<Student> readXls2(InputStream is) throws IOException, ParseException {
		//InputStream is = new FileInputStream(file_path);
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(is);
		Student student = null;
		List<Student> list = new ArrayList<Student>();
		for (int numSheet = 0; numSheet < hssfWorkbook.getNumberOfSheets(); numSheet++) {
			HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(numSheet);
			if (hssfSheet == null) {
				continue;
			}
			for (int rowNum = 1; rowNum <= hssfSheet.getLastRowNum(); rowNum++) {
				HSSFRow hssfRow = hssfSheet.getRow(rowNum);
				if (hssfRow != null) {
					student = new Student();

					HSSFCell id = hssfRow.getCell(0);
					HSSFCell user_id = hssfRow.getCell(1);
					HSSFCell student_name = hssfRow.getCell(2);
					HSSFCell student_no = hssfRow.getCell(3);
					HSSFCell gender = hssfRow.getCell(4);
					HSSFCell natives = hssfRow.getCell(5);
					HSSFCell birthday = hssfRow.getCell(6);
					HSSFCell address = hssfRow.getCell(7);
					HSSFCell enter_date = hssfRow.getCell(8);
					HSSFCell phone = hssfRow.getCell(9);
					HSSFCell QQ = hssfRow.getCell(10);
					HSSFCell email = hssfRow.getCell(11);
					HSSFCell national = hssfRow.getCell(12);
					HSSFCell political = hssfRow.getCell(13);
					HSSFCell idCard = hssfRow.getCell(14);
					HSSFCell family_phone = hssfRow.getCell(15);
					HSSFCell middle_school = hssfRow.getCell(16);
					HSSFCell grade = hssfRow.getCell(17);
					HSSFCell class_id = hssfRow.getCell(18);
					HSSFCell examinee = hssfRow.getCell(19);
					HSSFCell password = hssfRow.getCell(20);
					HSSFCell token = hssfRow.getCell(21);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String idstr = getValue(id);
					if (!idstr.equals("")) {
						student.setId(Integer.parseInt(idstr));
					}

					String useridstr = getValue(user_id);
					if (!useridstr.equals("")) {
						student.setUserId(Integer.parseInt(useridstr));
					}

					student.setStudentName(getValue(student_name));

					student.setStudentNo(getValue(student_no));

					String genderstr = getValue(gender);
					if (!genderstr.equals("")) {
						student.setGender(Integer.parseInt(genderstr));
					}

					student.setNatives(getValue(natives));

					String birthdaystr = getValue(birthday);
					if (!birthdaystr.equals("")) {
						student.setBirthday(sdf.parse(birthdaystr));
					}

					student.setAddress(getValue(address));

					String enterdatestr = getValue(enter_date);
					if (!enterdatestr.equals("")) {
						student.setEnterDate(sdf.parse(enterdatestr));
					}

					student.setPhone(getValue(phone));

					student.setQq(getValue(QQ));

					student.setEmail(getValue(email));

					student.setNational(getValue(national));

					student.setPolitical(getValue(political));

					student.setIdcard(getValue(idCard));

					student.setFamilyPhone(getValue(family_phone));

					student.setMiddleSchool(getValue(middle_school));

					student.setGrade(getValue(grade));

					String classidstr = getValue(class_id);
					if (!classidstr.equals("")) {
						student.setClassId(Integer.parseInt(classidstr));
					}

					student.setExaminee(getValue(examinee));

					student.setPassword(getValue(password));

					student.setToken(getValue(token));

					list.add(student);
				}
			}
		}
		return list;
	}

	@SuppressWarnings("static-access")
	private String getValue(HSSFCell hssfCell) {
		if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {
			// ���ز������͵�ֵ
			return String.valueOf(hssfCell.getBooleanCellValue());
		} else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
			// ������ֵ���͵�ֵ
			return String.valueOf(hssfCell.getNumericCellValue());
		} else {
			// ������͵�ֵ
			return String.valueOf(hssfCell.getStringCellValue());
		}
	}

	@SuppressWarnings("static-access")
	private String getValue2(XSSFCell id) {
		if (id.getCellType() == id.CELL_TYPE_BOOLEAN) {
			// ���ز������͵�ֵ
			return String.valueOf(id.getBooleanCellValue());
		} else if (id.getCellType() == id.CELL_TYPE_NUMERIC) {
			// ������ֵ���͵�ֵ
			return String.valueOf(id.getNumericCellValue());
		} else {
			// ������͵�ֵ
			return String.valueOf(id.getStringCellValue());
		}
	}
}
