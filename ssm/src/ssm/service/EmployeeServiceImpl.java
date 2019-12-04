package ssm.service;

import jdk.internal.org.objectweb.asm.tree.InnerClassNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.beans.Employee;
import ssm.mapper.EmployeeMapper;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> getAllEmps() {
        return employeeMapper.getAllEmps();
    }

    @Override
    public void save(Employee employee) {
        employeeMapper.save(employee);
    }

    @Override
    public void delete(Integer id) {
        employeeMapper.delete(id);
    }

    @Override
    public boolean update(Employee employee) {
      return  employeeMapper.update(employee);
    }


    @Override
    public Employee getInfoById(Integer id) {
        return employeeMapper.getInfoById(id);
    }


}
