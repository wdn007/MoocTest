package cn.guet.mooc.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 学生信息实体类 注解方式配置对应数据表
 * 
 * @author wdn
 *
 */
@Entity
@Table(name = "stuinfo")
public class StuInfo {
	private String id;	//用户名
	private String password; //密码
	private String personalID;//身份证号
	private String username;//姓名
	private Integer sex;//性别
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthDate;//出生日期
	private String studentID;//学号
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date attendanceDate;//入学日期
	private String majorName;//专业
	private String telNumber;//手机
	private String email;//邮箱
	private String qq;//QQ
	private String wechat;//微信
	private String address;//通讯地址
	private Integer isEnabled; //账号状态（1为可以，0为锁定）
	
	
	
	public StuInfo() {
		super();
	}

	public StuInfo(String id, String password, String personalID, Integer sex,
			Date birthDate, String studentID, Date attendanceDate,
			String majorName, String telNumber, String email, String qq,
			String wechat, String address, Integer isEnabled) {
		super();
		this.id = id;
		this.password = password;
		this.personalID = personalID;
		this.sex = sex;
		this.birthDate = birthDate;
		this.studentID = studentID;
		this.attendanceDate = attendanceDate;
		this.majorName = majorName;
		this.telNumber = telNumber;
		this.email = email;
		this.qq = qq;
		this.wechat = wechat;
		this.address = address;
		this.isEnabled = isEnabled;
	}
	
	@Id
	@Column(name = "id", nullable = false, unique = true)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Column(name = "password", nullable = false, length = 20)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "personal_id", nullable = false, length = 18)
	public String getPersonalID() {
		return personalID;
	}
	public void setPersonalID(String personalID) {
		this.personalID = personalID;
	}
	
	@Column(name = "username", nullable = true, length = 20)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "sex", nullable = true)
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	
	@Column(name = "birth_date", nullable = true)
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	@Column(name = "student_id", nullable = true, length = 11)
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	@Column(name = "attendance_date", nullable = true)
	public Date getAttendanceDate() {
		return attendanceDate;
	}
	public void setAttendanceDate(Date attendanceDate) {
		this.attendanceDate = attendanceDate;
	}

	@Column(name = "major_name", nullable = true, length = 20)
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	@Column(name = "tel_number", nullable = true, length = 11)
	public String getTelNumber() {
		return telNumber;
	}
	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	@Column(name = "email", nullable = true, length = 20)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "qq", nullable = true, length = 20)
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}

	@Column(name = "wechat", nullable = true, length = 20)
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	@Column(name = "address", nullable = true)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "is_enabled", nullable = true)
	public Integer getIsEnabled() {
		return isEnabled;
	}
	public void setIsEnabled(Integer isEnabled) {
		this.isEnabled = isEnabled;
	}

	@Override
	public String toString() {
		return "StuInfo [id=" + id + ", password=" + password + ", personalID="
				+ personalID + ", sex=" + sex + ", birthDate=" + birthDate
				+ ", studentID=" + studentID + ", attendanceDate="
				+ attendanceDate + ", majorName=" + majorName + ", telNumber="
				+ telNumber + ", email=" + email + ", qq=" + qq + ", wechat="
				+ wechat + ", address=" + address + ", isEnabled=" + isEnabled
				+ "]";
	}
	
	
	
}
