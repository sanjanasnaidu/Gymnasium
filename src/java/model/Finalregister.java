/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Harry Poter
 */
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="final_register")
public class Finalregister implements Serializable {
    @Id @GeneratedValue
    private Long id;
    private String fname;
    private String lname;
    private String gender;
    private String contact;
    private String email;
    private String slot;
    private String packages;
    private String price;
    private String instructor;
    
    public Finalregister(){}
    
    public Finalregister(String fname, String lname, String gender, String contact, String email,String slot,String packages,String price, String instructor) {
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.contact = contact;
        this.email = email;
        this.slot = slot;
        this.packages = packages;
        this.price = price;
        this.instructor = instructor;
    }
    
    public Long getId() {
        return id;
    }
 
     public void setId(Long id) {
        this.id = id;
    }
     
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSlot() {
        return slot;
    }

    public void setSlot(String slot) {
        this.slot = slot;
    }

    public String getPackages() {
        return packages;
    }

    public void setPackages(String packages) {
        this.packages = packages;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }
}
