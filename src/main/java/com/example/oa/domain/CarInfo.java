package com.example.oa.domain;

import java.io.Serializable;

/**
 * 车辆信息表
 * 
 * @author 龙海成
 *
 */
public class CarInfo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5450669591927023925L;
	private int carid;
	private String carname;
	private String carnumber;// 车牌号
	private double carprice;

	public CarInfo() {
	}

	public CarInfo(int carid, String carname, String carnumber, double carprice) {
		this.carid = carid;
		this.carname = carname;
		this.carnumber = carnumber;
		this.carprice = carprice;
	}

	public int getCarid() {
		return carid;
	}

	public void setCarid(int carid) {
		this.carid = carid;
	}

	public String getCarname() {
		return carname;
	}

	public void setCarname(String carname) {
		this.carname = carname;
	}

	public String getCarnumber() {
		return carnumber;
	}

	public void setCarnumber(String carnumber) {
		this.carnumber = carnumber;
	}

	public double getCarprice() {
		return carprice;
	}

	public void setCarprice(double carprice) {
		this.carprice = carprice;
	}

}
