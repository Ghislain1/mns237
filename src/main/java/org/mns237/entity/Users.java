package org.mns237.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="users")
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    long id;

    @Column(name="username")
    String username;
    @Column(name="fName")
    String fName;
    @Column(name="lName")
    String lName;
    @Column(name="email")
    String email;
    @Column(name="password")
    String password;
    @Column(name="passwordConfirmation")
    String passwordConfirmation;
    @Column(name="isAdmin")
    Boolean isAdmin;
    @Column(name="avater")
    String avater;
    @Column(name="token")
    String token;
    @Column(name="description")
    String description;
    @Column(name="createdDate")
    Date createdDate;

    public Users(){

    }

    public Users(long id, String email){
        this.id = id;
        this.email = email;
    }

    // getter and setter

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getId() {
        return id;
    }

    public String getfName() {
        return fName;
    }

    public String getlName() {
        return lName;
    }

    public Boolean getAdmin() {
        return isAdmin;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getPasswordConfirmation() {
        return passwordConfirmation;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getAvater() {
        return avater;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public void setAdmin(Boolean admin) {
        isAdmin = admin;
    }

    public void setAvater(String avater) {
        this.avater = avater;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPasswordConfirmation(String passwordConfirmation) {
        this.passwordConfirmation = passwordConfirmation;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getDescription() {
        return description;
    }

    public String getToken() {
        return token;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
