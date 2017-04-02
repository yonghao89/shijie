package cn.yjxxclub.shijie.entity;

import com.baomidou.mybatisplus.annotations.TableName;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-19
 * Time: 下午10:33
 * Describe: 告警实体类
 */
@TableName(value = "sj_alarm")
public class Alarm implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private Integer id;
    private Integer cpuUsage;
    private Integer setCpuUsage;
    private Integer jvmUsage;
    private Integer setJvmUsage;
    private Integer ramUsage;
    private Integer setRamUsage;
    private String email;
    private String operTime;
    private String mark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCpuUsage() {
        return cpuUsage;
    }

    public void setCpuUsage(Integer cpuUsage) {
        this.cpuUsage = cpuUsage;
    }

    public Integer getSetCpuUsage() {
        return setCpuUsage;
    }

    public void setSetCpuUsage(Integer setCpuUsage) {
        this.setCpuUsage = setCpuUsage;
    }

    public Integer getJvmUsage() {
        return jvmUsage;
    }

    public void setJvmUsage(Integer jvmUsage) {
        this.jvmUsage = jvmUsage;
    }

    public Integer getSetJvmUsage() {
        return setJvmUsage;
    }

    public void setSetJvmUsage(Integer setJvmUsage) {
        this.setJvmUsage = setJvmUsage;
    }

    public Integer getRamUsage() {
        return ramUsage;
    }

    public void setRamUsage(Integer ramUsage) {
        this.ramUsage = ramUsage;
    }

    public Integer getSetRamUsage() {
        return setRamUsage;
    }

    public void setSetRamUsage(Integer setRamUsage) {
        this.setRamUsage = setRamUsage;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOperTime() {
        return operTime;
    }

    public void setOperTime(String operTime) {
        this.operTime = operTime;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }
}
