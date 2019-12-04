package ssm.service;

        import ssm.beans.Employee;

        import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmps();

    public void save(Employee employee);

    public void delete(Integer id);
    //更新操作
    public boolean update(Employee employee);

    //根据id查询
    public  Employee getInfoById(Integer id);
}
