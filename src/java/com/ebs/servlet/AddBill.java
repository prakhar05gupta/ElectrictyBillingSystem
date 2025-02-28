/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ebs.servlet;

import com.ebs.dao.BillDao;
import com.ebs.entities.Bill;
import com.ebs.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class AddBill extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             BillDao pdao =new BillDao(ConnectionProvider.getConnection());
             
            int   customer_id =Integer.parseInt(request.getParameter("customer_id")) ;
            List<Bill> pbill = pdao.getBillByCustomerId(customer_id);
             int p_unit =0 ;
            if(pbill !=null && !pbill.isEmpty() ){
                Bill lBill = pbill.get(pbill.size()-1);
                p_unit =lBill.getUnits_consumed();
                
            }
                
            
            System.out.println(customer_id);
            String billing_period = request.getParameter("billing_period");
            int units_consumed = Integer.parseInt(request.getParameter("units_consumed"))-p_unit  ;
            float rate_per_unit = Float.parseFloat(request.getParameter("rate_per_unit"));
            String due_date = request.getParameter("due_date");
            float total_amount = (float)(units_consumed)*rate_per_unit ;
            
            String status  = "unpaid" ;
                
                Bill bill = new Bill(customer_id, billing_period, units_consumed, rate_per_unit, total_amount, due_date,status);
                
                BillDao dao =new BillDao(ConnectionProvider.getConnection());
                
                
                if(dao.Addbill(bill)){
                    out.println("done");
                }else{
                    
                    out.println("error");
                }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
