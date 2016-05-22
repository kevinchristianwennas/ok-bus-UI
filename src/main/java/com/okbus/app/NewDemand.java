package com.okbus.app;

public class NewDemand {
	private long userId;
	private String rentType;
	private String pickAddress;
	private String destinationAddress;
	private String departureDate;
	private String departureTime;
	private String returnDate;
	private String returnTime;
	private String contact;
	private String[] facilities;
	private DemandBus[] listOfBus;
	
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getRentType() {
		return rentType;
	}
	public void setRentType(String rentType) {
		this.rentType = rentType;
	}
	public String getPickAddress() {
		return pickAddress;
	}
	public void setPickAddress(String pickAddress) {
		this.pickAddress = pickAddress;
	}
	public String getDestinationAddress() {
		return destinationAddress;
	}
	public void setDestinationAddress(String destinationAddress) {
		this.destinationAddress = destinationAddress;
	}
	public String getDepartureDate() {
		return departureDate;
	}
	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	public DemandBus[] getListOfBus() {
		return listOfBus;
	}
	public void setListOfBus(DemandBus[] listOfBus) {
		this.listOfBus = listOfBus;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String[] getFacilities() {
		return facilities;
	}
	public void setFacilities(String[] facilities) {
		this.facilities = facilities;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public String getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}
	
	public String toString() {
		return "userId: "+userId+". rentType: "+rentType+". pickAddress: "+pickAddress+". departureDate: "+departureDate+". departureTime: "+departureTime+". destinationAddress: "+destinationAddress+". returnDate: "+returnDate+". returnTime: "+returnTime+". contact: "+contact;
	}
}