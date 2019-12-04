package ssm.mapper;

import ssm.beans.Employee;

import java.util.List;

public interface EmployeeMapper {

    public List<Employee> getAllEmps();

    public void save(Employee employee);

    public void delete(Integer id);

    //更新前的查询
    public Employee getInfoById(Integer id);

    public boolean update(Employee employee);
}