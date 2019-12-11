package com.codegym.model;

public class Customer {
    private int id;
    private String name;
    private String email;
    private String address;
    private static int count = 0;

    public Customer() {}

    public Customer(String name, String email, String address) {
        this.id = this.count + 1;
        this.name = name;
        this.email = email;
        this.address = address;
        this.count++;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCount() {return this.count;}
}
