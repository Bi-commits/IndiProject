package kr.gudi.web.bean;

public class UserBean {

	 int M_No;
	 String M_ID;
	 String M_PW;
	 String M_name;
	 String M_email;
	 String M_birth;
	 String M_phone;
	 String M_signupdate;
	 String M_type;
	 
	public int getM_No() {
		return M_No;
	}
	public void setM_No(int m_No) {
		M_No = m_No;
	}
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public String getM_PW() {
		return M_PW;
	}
	public void setM_PW(String m_PW) {
		M_PW = m_PW;
	}
	public String getM_name() {
		return M_name;
	}
	public void setM_name(String m_name) {
		M_name = m_name;
	}
	public String getM_email() {
		return M_email;
	}
	public void setM_email(String m_email) {
		M_email = m_email;
	}
	public String getM_birth() {
		return M_birth;
	}
	public void setM_birth(String m_birth) {
		M_birth = m_birth;
	}
	public String getM_phone() {
		return M_phone;
	}
	public void setM_phone(String m_phone) {
		M_phone = m_phone;
	}
	public String getM_signupdate() {
		return M_signupdate;
	}
	public void setM_signupdate(String m_signupdate) {
		M_signupdate = m_signupdate;
	}
	public String getM_type() {
		return M_type;
	}
	public void setM_type(String m_type) {
		M_type = m_type;
	}
	@Override
	public String toString() {
		return "UserBean [M_No=" + M_No + ", M_ID=" + M_ID + ", M_PW=" + M_PW + ", M_name=" + M_name + ", M_email="
				+ M_email + ", M_birth=" + M_birth + ", M_phone=" + M_phone + ", M_signupdate=" + M_signupdate
				+ ", M_type=" + M_type + "]";
	}
	
	
	
	
	
}
