/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ebs.helper;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author HP
 */
public class ConnectionProvider {
    private static Connection con ;
    public static Connection getConnection(){
        try {
            if(con==null){
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/electricitybillingsystem","root","1234");
            }
            
        } catch (Exception e) {
        }
        
        
        
        
        return con;
        
    }
}
