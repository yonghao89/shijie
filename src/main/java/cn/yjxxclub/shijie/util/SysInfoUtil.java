package cn.yjxxclub.shijie.util;

import cn.yjxxclub.shijie.entity.ServerInfo;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-4-7
 * Time: 下午7:40
 * Describe: 系统信息
 */
public class SysInfoUtil {
        public static ServerInfo ServerProperty() {
            ServerInfo serverInfo = new ServerInfo();
            Runtime r = Runtime.getRuntime();
            Properties props = System.getProperties();
            InetAddress addr = null;
            String ip = "";
            String hostName = "";
            try {
                addr = InetAddress.getLocalHost();
            } catch (UnknownHostException e) {
                ip = "无法获取主机IP";
                hostName = "无法获取主机名";
            }
            if (null != addr) {
                try {
                    ip = addr.getHostAddress();
                } catch (Exception e) {
                    ip = "无法获取主机IP";
                }
                try {
                    hostName = addr.getHostName();
                } catch (Exception e) {
                    hostName = "无法获取主机名";
                }
            }
            serverInfo.setHostIp(ip);
            serverInfo.setHostName(hostName);
            serverInfo.setOsName(props.getProperty("os.name"));
            serverInfo.setOsVersion(props.getProperty("os.version"));
            serverInfo.setJavaHome(props.getProperty("java.home"));
            serverInfo.setJavaVersion(props.getProperty("java.version"));
            serverInfo.setUrl(props.getProperty("java.vendor.url"));
            return serverInfo;
        }

        /*public static ServerInfoFormMap memory(Sigar sigar) {
            ServerInfoFormMap monitorMap = new ServerInfoFormMap();
            try {
                Runtime r = Runtime.getRuntime();
                monitorMap.put("jvmTotal", Common.div(r.totalMemory(), (1024 * 1024), 2) + "M");// java总内存
                monitorMap.put("jvmUse", Common.div(r.totalMemory() - r.freeMemory(), (1024 * 1024), 2) + "M");// JVM使用内存
                monitorMap.put("jvmFree", Common.div(r.freeMemory(), (1024 * 1024), 2) + "M");// JVM剩余内存
                monitorMap.put("jvmUsage", Common.div(r.totalMemory() - r.freeMemory(), r.totalMemory(), 2));// JVM使用率

                Mem mem = sigar.getMem();
                // 内存总量
                monitorMap.put("ramTotal", Common.div(mem.getTotal(), (1024 * 1024 * 1024), 2) + "G");// 内存总量
                monitorMap.put("ramUse", Common.div(mem.getUsed(), (1024 * 1024 * 1024), 2) + "G");// 当前内存使用量
                monitorMap.put("ramFree", Common.div(mem.getFree(), (1024 * 1024 * 1024), 2) + "G");// 当前内存剩余量
                monitorMap.put("ramUsage", Common.div(mem.getUsed(), mem.getTotal(), 2));// 内存使用率

                Swap swap = sigar.getSwap();
                // 交换区总量
                monitorMap.put("swapTotal", Common.div(swap.getTotal(), (1024 * 1024 * 1024), 2) + "G");
                // 当前交换区使用量
                monitorMap.put("swapUse", Common.div(swap.getUsed(), (1024 * 1024 * 1024), 2) + "G");
                // 当前交换区剩余量
                monitorMap.put("swapFree", Common.div(swap.getFree(), (1024 * 1024 * 1024), 2) + "G");
                monitorMap.put("swapUsage", Common.div(swap.getUsed(), swap.getTotal(), 2));//

            } catch (Exception e) {
            }
            return monitorMap;
        }
        public static ServerInfoFormMap usage(Sigar sigar) {
            ServerInfoFormMap monitorMap = new ServerInfoFormMap();
            try {
                Runtime r = Runtime.getRuntime();
                monitorMap.put("jvmUsage", Math.round(Common.div(r.totalMemory()-r.freeMemory(), r.totalMemory(), 2)*100));// JVM使用率

                Mem mem = sigar.getMem();
                // 内存总量
                monitorMap.put("ramUsage", Math.round(Common.div(mem.getUsed(), mem.getTotal(), 2)*100));// 内存使用率

                List<ServerInfoFormMap> cpu = cpuInfos(sigar);
                double b = 0.0;
                for (ServerInfoFormMap m : cpu) {
                    b += Double.valueOf(m.get("cpuTotal")+"");
                }
                monitorMap.put("cpuUsage", Math.round(b/cpu.size()));// cpu使用率
            } catch (Exception e) {
            }
            return monitorMap;
        }

        public static List<ServerInfoFormMap> cpuInfos(Sigar sigar) {
            List<ServerInfoFormMap> monitorMaps = new ArrayList<ServerInfoFormMap>();
            try {
                CpuPerc cpuList[] = sigar.getCpuPercList();
                for (CpuPerc cpuPerc : cpuList) {
                    ServerInfoFormMap monitorMap = new ServerInfoFormMap();
                    monitorMap.put("cpuUserUse", Math.round(cpuPerc.getUser()*100));// 用户使用率
                    monitorMap.put("cpuSysUse", Math.round(cpuPerc.getSys()*100));// 系统使用率
                    monitorMap.put("cpuWait", Math.round(cpuPerc.getWait()*100));// 当前等待率
                    monitorMap.put("cpuFree", Math.round(cpuPerc.getIdle()*100));// 当前空闲率
                    monitorMap.put("cpuTotal",Math.round(cpuPerc.getCombined()*100));// 总的使用率
                    monitorMaps.add(monitorMap);
                }
            } catch (Exception e) {
            }
            return monitorMaps;
        }

        public List<ServerInfoFormMap> diskInfos(Sigar sigar) throws Exception {
            List<ServerInfoFormMap> monitorMaps = new ArrayList<ServerInfoFormMap>();
            FileSystem fslist[] = sigar.getFileSystemList();
            for (int i = 0; i < fslist.length; i++) {
                ServerInfoFormMap monitorMap = new ServerInfoFormMap();
                FileSystem fs = fslist[i];
                // 文件系统类型名，比如本地硬盘、光驱、网络文件系统等
                FileSystemUsage usage = null;
                usage = sigar.getFileSystemUsage(fs.getDirName());
                switch (fs.getType()) {
                    case 0: // TYPE_UNKNOWN ：未知
                        break;
                    case 1: // TYPE_NONE
                        break;
                    case 2: // TYPE_LOCAL_DISK : 本地硬盘

                        monitorMap.put("diskName", fs.getDevName());// 系统盘名称
                        monitorMap.put("diskType", fs.getSysTypeName());// 盘类型
                        // 文件系统总大小
                        monitorMap.put("diskTotal", fs.getSysTypeName());
                        // 文件系统剩余大小
                        monitorMap.put("diskFree", usage.getFree());
                        // 文件系统已经使用量
                        monitorMap.put("diskUse", usage.getUsed());
                        double usePercent = usage.getUsePercent() * 100D;
                        // 文件系统资源的利用率
                        monitorMap.put("diskUsage", usePercent);// 内存使用率
                        monitorMaps.add(monitorMap);
                        break;
                    case 3:// TYPE_NETWORK ：网络
                        break;
                    case 4:// TYPE_RAM_DISK ：闪存
                        break;
                    case 5:// TYPE_CDROM ：光驱
                        break;
                    case 6:// TYPE_SWAP ：页面交换
                        break;
                }
            }
            return monitorMaps;
        }*/


}
