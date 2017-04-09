package cn.yjxxclub.shijie.controller;

import cn.yjxxclub.base.controller.BaseController;
import cn.yjxxclub.shijie.entity.ServerInfo;
import cn.yjxxclub.shijie.service.ServerInfoService;
import com.sun.org.apache.regexp.internal.RE;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-18
 * Time: 下午7:36
 * Describe: 实时监控控制器
 */
@Controller
@RequestMapping("/monitor/realTime")
public class RealTimeController extends BaseController{
    private static final Logger log = LoggerFactory.getLogger(RealTimeController.class);

    @Autowired
    ServerInfoService serverInfoService;

    /**
     * 实时监控页面
     * @return
     */
    @RequestMapping(value = "", method = RequestMethod.POST)
    public ModelAndView init(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("monitor/realTime/page");
        return mv;
    }

    /**
     * 服务器信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/info", method = RequestMethod.POST)
    public Object info(){
        log.info("-exe");
        ServerInfo serverInfo = serverInfoService.find();
        return renderSuccess(serverInfo);
    }


}
