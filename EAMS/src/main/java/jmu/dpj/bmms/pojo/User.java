package jmu.dpj.bmms.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

@AllArgsConstructor                 //全参构造函数
@NoArgsConstructor                  //无参构造函数
@Data                               //get、set方法
@ToString                           //toString方法
public class User implements Serializable {
    private Integer u_id;           //用户id
    private String u_account;       //账号
    private String u_password;      //密码
//    private Integer u_role;         //权限
}
