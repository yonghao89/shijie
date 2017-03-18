package cn.yjxxclub.shijie.monitor.controller;

import com.alibaba.druid.mock.MockArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-18
 * Time: 下午7:36
 * Describe: 告警列表控制器
 */
@Controller
@RequestMapping("/monitor/alarm")
public class Alarm {

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ModelAndView init(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("monitor/alarm/page");
        return mv;
    }
}
