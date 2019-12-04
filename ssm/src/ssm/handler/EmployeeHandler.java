package ssm.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ssm.beans.Employee;
import ssm.service.EmployeeService;

import java.util.List;
import java.util.Map;

@Controller
public class EmployeeHandler {

    @Autowired
    private EmployeeService employeeService;

    /**
     * 显示所有员工信息
     */
    @RequestMapping(value = "/listAllEmps")
    public String listAllEmps(Map<String, Object> map) {
        List<Employee> emps = employeeService.getAllEmps();
        map.put("emp", emps);
        return "list";
    }

    /**
     * 去往添加页面
     */
    @RequestMapping(value = "/goAdd")
    public ModelAndView goAdd() {
        ModelAndView mav = new ModelAndView("input");
        return mav;
    }

    /**
     * 添加方法
     */
    @RequestMapping(value = "doAdd")
    public ModelAndView doAdd(Employee employee) {
        employeeService.save(employee);
        ModelAndView mav = new ModelAndView("redirect:/listAllEmps");
        return mav;
    }

    /**
     * 删除方法
     */

    @RequestMapping(value="/delete")
    public ModelAndView delete(Integer id) {
        employeeService.delete(id);
        ModelAndView mav = new ModelAndView("redirect:/listAllEmps");
        return mav;
    }

    /**
     * 去往编辑方法
     */

    @RequestMapping(value = "edit")
    public ModelAndView edit(Integer id){
        Employee emp = employeeService.getInfoById(id);
        System.out.println("得到的Id为："+id);
        ModelAndView mav = new ModelAndView("edit");
        mav.addObject("emp",emp);
        return mav;
    }


    /**
     * 修改操作
     */
    @RequestMapping(value="/doEdit")
    public ModelAndView doEdit(Employee employee){
//        if(employeeService.update(employee)){
//            employee = employeeService.getInfoById(employee.getId());
//        }
        boolean update = employeeService.update(employee);
        System.out.println(update);
        ModelAndView mav = new ModelAndView("redirect:/listAllEmps");
        mav.addObject("employee",employee);
        return mav;
    }

}
