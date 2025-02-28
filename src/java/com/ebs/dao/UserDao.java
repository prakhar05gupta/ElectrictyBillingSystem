/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ebs.dao;

import com.ebs.entities.User;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;


/**
 *
 * @author HP
 */
public class UserDao {
    
    private Connection con ;
    
    public UserDao(Connection con){
        this.con = con ;
        
    }
    
    public boolean saveUser(User user){
        boolean f =false;
        try{
            
            String query = "insert into user(cname,email,password,address,type) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getCname());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getAddress());
            pstmt.setString(5, user.getType());
            pstmt.executeUpdate();
            f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
        
    }
    public User getUserByEmailAndPassword(String email ,String password){
        User user =null;
        try{
            String query ="select * from user where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next()){
                 user =new User() ;
                 user.setCid(set.getInt("cid"));
                 user.setCname(set.getString("cname"));
                 user.setEmail(set.getString("email"));
                 user.setPassword(set.getString("password"));
                 user.setAddress(set.getString("address"));
                 user.setType(set.getString("type"));
                 
                 
                 
            }
            
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
        
    }
    
}
