/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ebs.dao;
import com.ebs.entities.Bill;
import java.sql.* ;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author HP
 */
public class BillDao {
    private Connection con ;
    public BillDao(Connection con){
        this.con =con ;
        
    }
    public boolean Addbill(Bill bill){
        boolean f = false ;
        
        try {
            String query  = "INSERT INTO bills (customer_id, billing_period, units_consumed, rate_per_unit, total_amount, due_date ,  status) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement p = con.prepareStatement(query);
            p.setInt(1, bill.getCustomer_id());
            p.setString(2, bill.getBilling_period());
            p.setInt(3, bill.getUnits_consumed());
            p.setFloat(4, bill.getRate_per_unit());
            p.setFloat(5, bill.getTotal_amount());
            p.setString(6, bill.getDue_date());
            p.setString(7, bill.getStatus());
            
            p.executeUpdate() ;
            f=true ;

        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        return f ;
        
    }
    public List<Bill> getBillByCustomerId(int customer_id){
        
        List<Bill> bills = new ArrayList<>() ;
        try {
                 String query = "SELECT * FROM bills WHERE customer_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, customer_id);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            Bill bill = new Bill();
            bill.setBill_id(rs.getInt("bill_id"));
            bill.setCustomer_id(rs.getInt("customer_id"));
            bill.setBilling_period(rs.getString("billing_period"));
            bill.setUnits_consumed(rs.getInt("units_consumed"));
            bill.setRate_per_unit(rs.getFloat("rate_per_unit"));
            bill.setTotal_amount(rs.getFloat("total_amount"));
            bills.add(bill);

            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return bills ;
    }
    
}
