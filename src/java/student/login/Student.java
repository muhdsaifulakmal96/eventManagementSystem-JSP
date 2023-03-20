/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student.login;

 
public class Student {
   int id;
   String studentusername;
   String studentemail;
   String studentpassword;

    public Student() {
    }

    public Student(int id, String studentusername, String studentemail, String studentpassword) {
        this.id = id;
        this.studentusername = studentusername;
        this.studentemail = studentemail;
        this.studentpassword = studentpassword;
    }

    public Student(String studentusername, String studentemail, String studentpassword) {
        this.studentusername = studentusername;
        this.studentemail = studentemail;
        this.studentpassword = studentpassword;
    }

    public Student(String studentemail, String studentpassword) {
        this.studentemail = studentemail;
        this.studentpassword = studentpassword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentusername() {
        return studentusername;
    }

    public void setStudentusername(String studentusername) {
        this.studentusername = studentusername;
    }

    public String getStudentemail() {
        return studentemail;
    }

    public void setStudentemail(String studentemail) {
        this.studentemail = studentemail;
    }

    public String getStudentpassword() {
        return studentpassword;
    }

    public void setStudentpassword(String studentpassword) {
        this.studentpassword = studentpassword;
    }
   
   
}
