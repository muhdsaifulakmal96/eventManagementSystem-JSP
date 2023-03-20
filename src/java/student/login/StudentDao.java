/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author SAIFULAKMAL
 */

import java.sql.Connection;
public class StudentDao {
    
    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
     
      public static Student getLoginBySession(String username, String password,String role) {
        Student e = new Student();
        try {
            Connection con = StudentDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT*FROM student WHERE  studentusername=? and studentemail=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3,role);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                e.setStudentusername(rs.getString(1));
                e.setStudentpassword(rs.getString(2));
               

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;

    }
}
