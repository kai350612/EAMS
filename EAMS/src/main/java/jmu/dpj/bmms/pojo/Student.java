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
public class Student implements Serializable {
    private Integer s_no;           //学号
    private String s_name;          //姓名
    private String s_sex;           //性别
    private Integer s_age;          //年龄
//    private String s_dept;          //所在系
}
