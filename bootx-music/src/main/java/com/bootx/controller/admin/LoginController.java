package com.bootx.controller.admin;

import com.bootx.controller.BaseController;
import com.bootx.entity.Admin;
import com.bootx.service.AdminService;
import com.bootx.util.JWTUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController("apiLoginController")
@RequestMapping("/admin/api/login")
public class LoginController extends BaseController {

    @Resource
    private AdminService adminService;

    /**
     * @param username
     * @param password
     * @param type
     * @return
     */
    @PostMapping("/submit")
    private Map<String,Object> login(String username,String password,String type) {
        Map<String,Object> data = new HashMap<>();
        data.put("type",type);
        if(StringUtils.isBlank(username)||StringUtils.isBlank(password)){
            data.put("status","error");
            data.put("msg","请输入用户名和密码");
            return data;
        }

        Admin admin = adminService.findByUsername(username);
        if(admin==null||!admin.isValidCredentials(password)){
            data.put("status","error");
            data.put("msg","用户名或密码错误");
        }else if(admin.getStatus()!=2){
            data.put("status","error");
            data.put("msg","账号信息未审核或审核不通过，请联系管理员");
        }else{
            data.put("status","ok");
            data.put("msg","");
            data.put("currentAuthority","admin");
            Map<String,Object> data1 = adminService.getData(admin);
            data.put("token", JWTUtils.create(admin.getId()+"",data1));
        }
        return data;


    }


    @PostMapping("/outLogin")
    private Map<String,Object> outLogin() {
        Map<String,Object> data = new HashMap<>();
        return data;


    }



}
