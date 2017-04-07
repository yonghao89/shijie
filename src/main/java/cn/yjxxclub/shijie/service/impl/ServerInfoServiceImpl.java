package cn.yjxxclub.shijie.service.impl;

import cn.yjxxclub.shijie.entity.ServerInfo;
import cn.yjxxclub.shijie.service.ServerInfoService;
import cn.yjxxclub.shijie.util.SysInfoUtil;
import org.springframework.stereotype.Service;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-4-7
 * Time: 下午7:59
 * Describe:
 */
@Service
public class ServerInfoServiceImpl implements ServerInfoService{
    @Override
    public ServerInfo find() {
        ServerInfo serverInfo = SysInfoUtil.ServerProperty();
        return serverInfo;
    }
}
