package com.scb.axessspringboottraining.model;

 

 

public class Customer {

    private int id;

    private String firstname;

    private String lastname;

    private Boolean active;

    private String email;

    private String phone;


    public int getId() {

        return id;

    }

    public void setId(int id) {

        this.id = id;

    }

    public String getFirstname() {

        return firstname;

    }

    public void setFirstname(String firstname) {

        this.firstname = firstname;

    }

    public String getLastname() {

        return lastname;

    }

    public void setLastname(String lastname) {

        this.lastname = lastname;

    }

    public Boolean getActive() {

        return active;

    }

    public void setActive(Boolean active) {

        this.active = active;

    }

    public String getEmail() {

        return email;

    }

    public void setEmail(String email) {

        this.email = email;

    }

    public String getPhone() {

        return phone;

    }

    public void setPhone(String phone) {

        this.phone = phone;

    }

    public Customer(int id, String firstname, String lastname, Boolean active, String email, String phone) {

        super();

        this.id = id;

        this.firstname = firstname;

        this.lastname = lastname;

        this.active = active;

        this.email = email;

        this.phone = phone;

    }




 

}
