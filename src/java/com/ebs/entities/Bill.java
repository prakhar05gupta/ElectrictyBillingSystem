/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ebs.entities;

/**
 *
 * @author HP
 */
public class Bill {
        private int bill_id ;
        private int customer_id ;
        private String billing_period ;
        private int units_consumed ;
        private float rate_per_unit ;
        private float total_amount ;
        private String due_date ;
        private String status ;

    public Bill(int bill_id, int customer_id, String billing_period, int units_consumed, float rate_per_unit, float total_amount, String due_date, String status) {
        this.bill_id = bill_id;
        this.customer_id = customer_id;
        this.billing_period = billing_period;
        this.units_consumed = units_consumed;
        this.rate_per_unit = rate_per_unit;
        this.total_amount = total_amount;
        this.due_date = due_date;
        this.status = status;
        
        
    }

    public Bill(int customer_id, String billing_period, int units_consumed, float rate_per_unit, float total_amount,String due_date ,  String status) {
        this.customer_id = customer_id;
        this.billing_period = billing_period;
        this.units_consumed = units_consumed;
        this.rate_per_unit = rate_per_unit;
        this.total_amount = total_amount;
        this.due_date =due_date ;
        this.status = status;
    }

    public Bill() {
        
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getBilling_period() {
        return billing_period;
    }

    public void setBilling_period(String billing_period) {
        this.billing_period = billing_period;
    }

    public int getUnits_consumed() {
        return units_consumed;
    }

    public void setUnits_consumed(int units_consumed) {
        this.units_consumed = units_consumed;
    }

    public float getRate_per_unit() {
        return rate_per_unit;
    }

    public void setRate_per_unit(float rate_per_unit) {
        this.rate_per_unit = rate_per_unit;
    }

    public float getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(float total_amount) {
        this.total_amount = total_amount;
    }

    public String getDue_date() {
        return due_date;
    }

    public void setDue_date(String due_date) {
        this.due_date = due_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
        
        
        
}
