package com.nithiya.BackendMusical.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="User_Details",uniqueConstraints = {
		@UniqueConstraint(columnNames = "user_Id"),
		@UniqueConstraint(columnNames = "user_MailId") })
public class UserModel implements Serializable { 

	
	private static final long serialVersionUID = 1L;
	@Id
	@NotNull(message="Please fill all Data")
	@Column(name="user_Id")
	private long user_Id;@NotNull(message="Please fill all Data")
    @NotEmpty
	@Column(name="user_Name")
	private String userName;
	@NotNull(message="Please fill all Data")
    @NotEmpty
	@Column(name="user_Password")
	private String userPassword;
	@NotNull(message="Please fill all Data")
   @NotEmpty
	@Column(name="user_MailId")
	private String userMailId;
	@NotNull(message="Please fill all Data")
    @NotEmpty
	@Column(name="user_Age")
	private String userAge;
	@NotNull(message="Please fill all Data")
    @NotEmpty
	@Column(name="user_Gender")
	private String user_Gender;
	@Column(name="user_Role")
	private String userRole;
	@Column(name="enabled")
	private boolean enabled;


	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public long getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(long user_Id) {
		this.user_Id = user_Id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	
	public String getUserMailId() {
		return userMailId;
	}

	public void setUserMailId(String userMailId) {
		this.userMailId = userMailId;
	}

	public String getUserAge() {
		return userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}

	
	public String getUser_Gender() {
		return user_Gender;
	}

	public void setUser_Gender(String user_Gender) {
		this.user_Gender = user_Gender;
	}
	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public UserModel(int user_Id, String userName, String userPassword, String user_Address, String userMailId,
			String userAge, String user_Phone, String user_Gender,String userRole, boolean enabled) {
		super();
		this.user_Id = user_Id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userMailId = userMailId;
		this.userAge = userAge;
		this.user_Gender = user_Gender;
		//this.userCartId = userCartId;
		this.userRole = userRole;
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "UserModel [user_Id=" + user_Id + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userMailId=" + userMailId + ", userAge=" + userAge + ", user_Gender=" + user_Gender + ", userRole=" + userRole + ", enabled=" + enabled + "]";
	}
	
	
	
}
