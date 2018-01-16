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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

//车辆信息表
@Entity 
@Table(name="t_carinfo")
public class CarInfoBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="id")
	//@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	// 机动车辆号牌
	@Column(length=30)
	private String carId;
	// 厂牌型号
	@Column(length=20)
	private String brand;
	// 发动机号
	@Column(length=40)
	private String engineId;
	// 颜色
	@Column(length=20)
	private String color;
	// 初次登记日期
	@Column(columnDefinition="DATE")
	private Date registerDate;
	// 年检有限期
	@Column()
	private int annualInspection;
	// 车架号
	@Column(length=40)
	private String vin;
	// 车辆评估价格
	@Column
	private double assessmentPrice;
	// 目前已行驶里程数
	@Column
	private int xkm;
	// 身份证是否交付
	@Column
	private boolean getID;
	// 车辆购置证/发票是否交付
	@Column
	private boolean getAfford;
	// 交强保险单是否交付
	@Column
	private boolean getSali;
	// 车辆钥匙是否交付
	@Column
	private boolean getKey;
	// 车辆钥匙几把
	@Column
	private int keyNumber;
	// 机动车登记证是否交付
	@Column
	private boolean getRegisterLicense;
	// 商业保险单是否交付
	@Column
	private boolean getInsurance;
	// 车辆行驶证是否交付
	@Column
	private boolean getDrivingLicense;
	// 车辆原始发票是否交付
	@Column
	private boolean getOriginalInvoice;
	// 车辆完税证是否交付
	@Column
	private boolean getTaxCertificate;
	// 进口车辆证明是否交付
	@Column
	private boolean getImportCertificate;
	//订单表对象
	@ManyToOne(fetch=FetchType.LAZY)
	@Cascade(value= {CascadeType.ALL})
	@JoinColumn(name="fk_order_id")
	private OrderBean order;
	
	//车内物品列表
	@OneToMany(fetch=FetchType.LAZY,mappedBy="carInfo")
	@Cascade(value= {CascadeType.ALL})
	private Set<ItemBean> itemList;
	
	//车辆行驶证正副本（原件）
	@Column(length=200)
	private String drivingLisense;
	//车辆登记证书（原件）
	@Column(length=200)
	private String carRegisterForm;
	//抵押车辆评估表
	@Column(length=200)
	private String carAsseceForm;
	//保单（商业险）
	@Column(length=200)
	private String commerceinsurance;
	//车辆照片
	@Column(length=200)
	private String carPic;
	//保单（交强险)
	@Column(length=200)
	private String sali;
	//其他车辆附件
	@Column(length=200)
	private String otherAttachment;
	
	
	public CarInfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}



	public String getCarId() {
		return carId;
	}



	public void setCarId(String carId) {
		this.carId = carId;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getEngineId() {
		return engineId;
	}



	public void setEngineId(String engineId) {
		this.engineId = engineId;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public Date getRegisterDate() {
		return registerDate;
	}



	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}



	public int getAnnualInspection() {
		return annualInspection;
	}



	public void setAnnualInspection(int annualInspection) {
		this.annualInspection = annualInspection;
	}



	public String getVin() {
		return vin;
	}



	public void setVin(String vin) {
		this.vin = vin;
	}



	public double getAssessmentPrice() {
		return assessmentPrice;
	}



	public void setAssessmentPrice(double assessmentPrice) {
		this.assessmentPrice = assessmentPrice;
	}



	public int getXkm() {
		return xkm;
	}



	public void setXkm(int xkm) {
		this.xkm = xkm;
	}



	public boolean isGetID() {
		return getID;
	}



	public void setGetID(boolean getID) {
		this.getID = getID;
	}



	public boolean isGetAfford() {
		return getAfford;
	}



	public void setGetAfford(boolean getAfford) {
		this.getAfford = getAfford;
	}



	public boolean isGetSali() {
		return getSali;
	}



	public void setGetSali(boolean getSali) {
		this.getSali = getSali;
	}



	public boolean isGetKey() {
		return getKey;
	}



	public void setGetKey(boolean getKey) {
		this.getKey = getKey;
	}



	public int getKeyNumber() {
		return keyNumber;
	}



	public void setKeyNumber(int keyNumber) {
		this.keyNumber = keyNumber;
	}



	public boolean isGetRegisterLicense() {
		return getRegisterLicense;
	}



	public void setGetRegisterLicense(boolean getRegisterLicense) {
		this.getRegisterLicense = getRegisterLicense;
	}



	public boolean isGetInsurance() {
		return getInsurance;
	}



	public void setGetInsurance(boolean getInsurance) {
		this.getInsurance = getInsurance;
	}



	public boolean isGetDrivingLicense() {
		return getDrivingLicense;
	}



	public void setGetDrivingLicense(boolean getDrivingLicense) {
		this.getDrivingLicense = getDrivingLicense;
	}



	public boolean isGetOriginalInvoice() {
		return getOriginalInvoice;
	}



	public void setGetOriginalInvoice(boolean getOriginalInvoice) {
		this.getOriginalInvoice = getOriginalInvoice;
	}



	public boolean isGetTaxCertificate() {
		return getTaxCertificate;
	}



	public void setGetTaxCertificate(boolean getTaxCertificate) {
		this.getTaxCertificate = getTaxCertificate;
	}



	public boolean isGetImportCertificate() {
		return getImportCertificate;
	}



	public void setGetImportCertificate(boolean getImportCertificate) {
		this.getImportCertificate = getImportCertificate;
	}



	public OrderBean getOrder() {
		return order;
	}



	public void setOrder(OrderBean order) {
		this.order = order;
	}

	
	public Set<ItemBean> getItemList() {
		return itemList;
	}


	public void setItemList(Set<ItemBean> itemList) {
		this.itemList = itemList;
	}
	
	public String getDrivingLisense() {
		return drivingLisense;
	}


	public void setDrivingLisense(String drivingLisense) {
		this.drivingLisense = drivingLisense;
	}


	public String getCarRegisterForm() {
		return carRegisterForm;
	}


	public void setCarRegisterForm(String carRegisterForm) {
		this.carRegisterForm = carRegisterForm;
	}


	public String getCarAsseceForm() {
		return carAsseceForm;
	}


	public void setCarAsseceForm(String carAsseceForm) {
		this.carAsseceForm = carAsseceForm;
	}


	public String getCommerceinsurance() {
		return commerceinsurance;
	}


	public void setCommerceinsurance(String commerceinsurance) {
		this.commerceinsurance = commerceinsurance;
	}


	public String getCarPic() {
		return carPic;
	}


	public void setCarPic(String carPic) {
		this.carPic = carPic;
	}


	public String getSali() {
		return sali;
	}


	public void setSali(String sali) {
		this.sali = sali;
	}


	public String getOtherAttachment() {
		return otherAttachment;
	}


	public void setOtherAttachment(String otherAttachment) {
		this.otherAttachment = otherAttachment;
	}


	@Override
	public String toString() {
		return "carInfoBean [id=" + id + ", carId=" + carId + ", brand=" + brand + ", engineId=" + engineId + ", color="
				+ color + ", registerDate=" + registerDate + ", annualInspection=" + annualInspection + ", vin=" + vin
				+ ", assessmentPrice=" + assessmentPrice + ", xkm=" + xkm + ", getID=" + getID + ", getAfford="
				+ getAfford + ", getSali=" + getSali + ", getKey=" + getKey + ", keyNumber=" + keyNumber
				+ ", getRegisterLicense=" + getRegisterLicense + ", getInsurance=" + getInsurance
				+ ", getDrivingLicense=" + getDrivingLicense + ", getOriginalInvoice=" + getOriginalInvoice
				+ ", getTaxCertificate=" + getTaxCertificate + ", getImportCertificate=" + getImportCertificate + "]";
	}

}
