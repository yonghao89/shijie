package cn.yjxxclub.shijie.entity;

import org.python.antlr.op.In;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-4-7
 * Time: 下午7:41
 * Describe: 系统信息
 */
public class ServerInfo implements java.io.Serializable{

    private Integer id;
    private String hostIp;
    private String hostName;
    private String osName;
    private String osVersion;
    private String javaVersion;
    private String javaHome;
    private String Url;

    public String getHostIp() {
        return hostIp;
    }

    public void setHostIp(String hostIp) {
        this.hostIp = hostIp;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public String getOsName() {
        return osName;
    }

    public void setOsName(String osName) {
        this.osName = osName;
    }

    public String getOsVersion() {
        return osVersion;
    }

    public void setOsVersion(String osVersion) {
        this.osVersion = osVersion;
    }

    public String getJavaVersion() {
        return javaVersion;
    }

    public void setJavaVersion(String javaVersion) {
        this.javaVersion = javaVersion;
    }

    public String getJavaHome() {
        return javaHome;
    }

    public void setJavaHome(String javaHome) {
        this.javaHome = javaHome;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }
}
