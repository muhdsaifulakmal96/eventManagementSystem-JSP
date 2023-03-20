/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.login;
import java.sql.*;
/**
 *
 * @author SAIFULAKMAL
 */
public class StudentDatabase {
     Connection con ;

    public StudentDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveStudent(Student user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into student(studentusername,studentemail,studentpassword) values(?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getStudentusername());
           pt.setString(2, user.getStudentemail());
           pt.setString(3, user.getStudentpassword());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
}
