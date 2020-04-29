package kr.gudi.web.bean;

public class ExhibitionBean {

	int E_No;
	String E_name;
	String E_datebegin;
	String E_dateend;
	String E_place;
	String E_image;
	String E_detailinfo;
	String E_adult;
	String E_teen;
	String E_child;
	String E_price;
	
	
	public int getE_No() {
		return E_No;
	}
	public void setE_No(int e_No) {
		E_No = e_No;
	}
	public String getE_name() {
		return E_name;
	}
	public void setE_name(String e_name) {
		E_name = e_name;
	}
	public String getE_datebegin() {
		return E_datebegin;
	}
	public void setE_datebegin(String e_datebegin) {
		E_datebegin = e_datebegin;
	}
	public String getE_dateend() {
		return E_dateend;
	}
	public void setE_dateend(String e_dateend) {
		E_dateend = e_dateend;
	}
	public String getE_place() {
		return E_place;
	}
	public void setE_place(String e_place) {
		E_place = e_place;
	}
	public String getE_image() {
		return E_image;
	}
	public void setE_image(String e_image) {
		E_image = e_image;
	}
	public String getE_detailinfo() {
		return E_detailinfo;
	}
	public void setE_detailinfo(String e_detailinfo) {
		E_detailinfo = e_detailinfo;
	}
	public String getE_adult() {
		return E_adult;
	}
	public void setE_adult(String e_adult) {
		E_adult = e_adult;
	}
	public String getE_teen() {
		return E_teen;
	}
	public void setE_teen(String e_teen) {
		E_teen = e_teen;
	}
	public String getE_child() {
		return E_child;
	}
	public void setE_child(String e_child) {
		E_child = e_child;
	}
	public String getE_price() {
		return E_price;
	}
	public void setE_price(String e_price) {
		E_price = e_price;
	}
	@Override
	public String toString() {
		return "ExhibitionBean [E_No=" + E_No + ", E_name=" + E_name + ", E_datebegin=" + E_datebegin + ", E_dateend="
				+ E_dateend + ", E_place=" + E_place + ", E_image=" + E_image + ", E_detailinfo=" + E_detailinfo
				+ ", E_adult=" + E_adult + ", E_teen=" + E_teen + ", E_child=" + E_child + ", E_price=" + E_price + "]";
	}
	
	
	
	
	
}
