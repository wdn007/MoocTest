package cn.guet.mooc.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 教师信息实体类 注解方式配置对应数据表
 * 
 * @author wdn
 *
 */
@Entity
@Table(name = "tecinfo")
public class TecInfo {
	private String id;	//用户名
	private String password; //密码
	private String personalID;//身份证号
	private String username;//姓名
	private Integer sex;//性别
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthDate;//出生日期
	private String organization;//单位
	private String professionalTitle;//职称
	private String telNumber;//手机
	private String email;//邮箱
	private String qq;//QQ
	private String wechat;//微信
	private String address;//通讯地址
	private String researchDirction;//研究方向
	private String teachingField;//教学领域
	private String personalAchivement;//个人成就
	private Integer isEnabled; //账号状态（1为可以，0为锁定）
	
	
	public TecInfo() {
		super();
	}


	public TecInfo(String id, String password, String personalID,
			String username, Integer sex, Date birthDate, String organization,
			String professionalTitle, String telNumber, String email,
			String qq, String wechat, String address, String researchDirction,
			String teachingField, String personalAchivement, Integer isEnabled) {
		super();
		this.id = id;
		this.password = password;
		this.personalID = personalID;
		this.username = username;
		this.sex = sex;
		this.birthDate = birthDate;
		this.organization = organization;
		this.professionalTitle = professionalTitle;
		this.telNumber = telNumber;
		this.email = email;
		this.qq = qq;
		this.wechat = wechat;
		this.address = address;
		this.researchDirction = researchDirction;
		this.teachingField = teachingField;
		this.personalAchivement = personalAchivement;
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

	@Column(name = "organization", nullable = true, length = 30)
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}

	@Column(name = "professional_title", nullable = true, length = 30)
	public String getProfessionalTitle() {
		return professionalTitle;
	}
	public void setProfessionalTitle(String professionalTitle) {
		this.professionalTitle = professionalTitle;
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

	@Column(name = "research_dirction", nullable = true)
	public String getResearchDirction() {
		return researchDirction;
	}
	public void setResearchDirction(String researchDirction) {
		this.researchDirction = researchDirction;
	}

	@Column(name = "teaching_field", nullable = true)
	public String getTeachingField() {
		return teachingField;
	}
	public void setTeachingField(String teachingField) {
		this.teachingField = teachingField;
	}

	@Column(name = "personal_achivement", nullable = true)
	public String getPersonalAchivement() {
		return personalAchivement;
	}
	public void setPersonalAchivement(String personalAchivement) {
		this.personalAchivement = personalAchivement;
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
		return "TecInfo [id=" + id + ", password=" + password + ", personalID="
				+ personalID + ", username=" + username + ", sex=" + sex
				+ ", birthDate=" + birthDate + ", organization=" + organization
				+ ", professionalTitle=" + professionalTitle + ", telNumber="
				+ telNumber + ", email=" + email + ", qq=" + qq + ", wechat="
				+ wechat + ", address=" + address + ", researchDirction="
				+ researchDirction + ", teachingField=" + teachingField
				+ ", personalAchivement=" + personalAchivement + ", isEnabled="
				+ isEnabled + "]";
	}
	
	
}
