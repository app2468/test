package ssm.beans;

public class Employee {
    private Integer id ;
    private String lastName;
    private String email ;
    private String gender ;
    private String d_id;


    private Department dept;

    public Department getDept() {
        return dept;
    }

    public void setDept(Department dept) {
        this.dept = dept;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    public String getD_id() {
        return d_id;
    }

    public void setD_id(String d_id) {
        this.d_id = d_id;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", d_id='" + d_id + '\'' +
                '}';
    }

    public Employee(Integer id, String lastName, String email, String gender, String d_id) {
        this.id = id;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.d_id = d_id;
    }

    public Employee(){}

}
