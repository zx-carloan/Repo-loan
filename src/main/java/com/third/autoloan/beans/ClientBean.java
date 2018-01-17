package com.third.autoloan.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//客户基本信息
@Entity 
@Table(name="t_client")
public class ClientBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5628840560549637638L;

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;

	// 申请人姓名
	@Column(length=20)
	private String name;
	// 最高学历
	@Column
	private int education;
	// 手机号
	@Column(length=40)
	private String cellphone;
	// '户籍地址'
	@Column(length=100)
	private String address;
	// 电话号码
	@Column(length=40)
	private String tel;
	// 婚姻状况
	@Column
	private int marriage;
	// 有无子女
	@Column
	private int child;
	// 房产状况
	@Column
	private int house;
	// 共同居住者
	@Column
	private int partner;
	// 现住址
	@Column(length=100)
	private String currentAddress;
	// 客户类型
	@Column
	private int clientType;
	// 工作单位全称
	@Column(length=100)
	private String companyName;
	// 公司地址
	@Column(length=100)
	private String companyAddress;
	// 单位电话
	@Column(length=30)
	private String companyTel;
	// 邮政编码
	@Column(length=20)
	private String postcode;
	// 进入单位时间
	@Column(columnDefinition="DATE")
	private Date preTime;
	// 所在部门
	@Column(length=20)
	private String department;
	// 担任职务
	@Column(length=20)
	private String position;
	// 公司规模
	@Column(length=20)
	private String companySize;
	// 行业类型
	@Column(length=20)
	private String industryType;
	// 单位性质
	@Column
	private int companyType;
	// 借款详细用途
	@Column(length=100)
	private String loanPurpose;
	//月收入
	@Column
	private double salary;
	// 可以承受的月还款额
	@Column
	private double maxAffordable;
	// 希望申请最长还款期限
	@Column
	private int maxPaybackTime;
	// 希望申请借款额度（最低）
	@Column
	private double minLoan;
	// 希望申请借款额度（最高）
	@Column
	private double maxLoan;
	// 您从何得知正合普惠
	@Column
	private int sourceOfInfo;
	// 业务员姓名
	@Column(length=20)
	private String saler;
	// 车贷专员
	@Column(length=20)
	private String valuer;
	// 申请日期
	@Column(columnDefinition="DATE")
	private Date applyDate;
	//身份证照片
	@Column(length=200)
	private String iDPic;
	//车贷申请表
	@Column(length=200)
	private String applicationForm;
	
	
	//联系人列表
	@OneToMany(fetch=FetchType.LAZY,mappedBy="clientBean")
	@Cascade(value= {CascadeType.ALL})
	private Set<ContactorBean> contactorList;
	
	@OneToOne(fetch=FetchType.LAZY,mappedBy="client")
	@Cascade(value= {CascadeType.ALL})
	private OrderBean orderBean;
	
	public ClientBean() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEducation() {
		return education;
	}

	public void setEducation(int education) {
		this.education = education;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getMarriage() {
		return marriage;
	}

	public void setMarriage(int marriage) {
		this.marriage = marriage;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getHouse() {
		return house;
	}

	public void setHouse(int house) {
		this.house = house;
	}

	public int getPartner() {
		return partner;
	}

	public void setPartner(int partner) {
		this.partner = partner;
	}

	public String getCurrentAddress() {
		return currentAddress;
	}

	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}

	public int getClientType() {
		return clientType;
	}

	public void setClientType(int clientType) {
		this.clientType = clientType;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyTel() {
		return companyTel;
	}

	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public Date getPreTime() {
		return preTime;
	}

	public void setPreTime(Date preTime) {
		this.preTime = preTime;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getIndustryType() {
		return industryType;
	}

	public void setIndustryType(String industryType) {
		this.industryType = industryType;
	}

	public int getCompanyType() {
		return companyType;
	}

	public void setCompanyType(int companyType) {
		this.companyType = companyType;
	}

	public String getLoanPurpose() {
		return loanPurpose;
	}

	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public double getMaxAffordable() {
		return maxAffordable;
	}

	public void setMaxAffordable(double maxAffordable) {
		this.maxAffordable = maxAffordable;
	}

	public int getMaxPaybackTime() {
		return maxPaybackTime;
	}

	public void setMaxPaybackTime(int maxPaybackTime) {
		this.maxPaybackTime = maxPaybackTime;
	}

	public double getMinLoan() {
		return minLoan;
	}

	public void setMinLoan(double minLoan) {
		this.minLoan = minLoan;
	}

	public double getMaxLoan() {
		return maxLoan;
	}

	public void setMaxLoan(double maxLoan) {
		this.maxLoan = maxLoan;
	}

	public int getSourceOfInfo() {
		return sourceOfInfo;
	}

	public void setSourceOfInfo(int sourceOfInfo) {
		this.sourceOfInfo = sourceOfInfo;
	}

	public String getSaler() {
		return saler;
	}

	public void setSaler(String saler) {
		this.saler = saler;
	}

	public String getValuer() {
		return valuer;
	}

	public void setValuer(String valuer) {
		this.valuer = valuer;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}

	public String getiDPic() {
		return iDPic;
	}

	public void setiDPic(String iDPic) {
		this.iDPic = iDPic;
	}

	public String getApplicationForm() {
		return applicationForm;
	}

	public void setApplicationForm(String applicationForm) {
		this.applicationForm = applicationForm;
	}
	
	public Set<ContactorBean> getContactorList() {
		return contactorList;
	}

	public void setContactorList(Set<ContactorBean> contactorList) {
		this.contactorList = contactorList;
	}

	@Override
	public String toString() {
		return "ClientBean [id=" + id + ", name=" + name + ", education=" + education + ", cellphone=" + cellphone
				+ ", address=" + address + ", tel=" + tel + ", marriage=" + marriage + ", child=" + child + ", house="
				+ house + ", partner=" + partner + ", currentAddress=" + currentAddress + ", clientType=" + clientType
				+ ", companyName=" + companyName + ", companyAddress=" + companyAddress + ", companyTel=" + companyTel
				+ ", postcode=" + postcode + ", preTime=" + preTime + ", department=" + department + ", position="
				+ position + ", companySize=" + companySize + ", industryType=" + industryType + ", companyType="
				+ companyType + ", loanPurpose=" + loanPurpose + ", salary=" + salary + ", maxAffordable="
				+ maxAffordable + ", maxPaybackTime=" + maxPaybackTime + ", minLoan=" + minLoan + ", maxLoan=" + maxLoan
				+ ", sourceOfInfo=" + sourceOfInfo + ", saler=" + saler + ", valuer=" + valuer + ", applyDate="
				+ applyDate + ", iDPic=" + iDPic + ", applicationForm=" + applicationForm + ", contactorList="
				+ contactorList + "]";
	}

	
}
