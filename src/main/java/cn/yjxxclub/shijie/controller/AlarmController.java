package cn.yjxxclub.shijie.controller;


import cn.yjxxclub.shijie.entity.Alarm;
import cn.yjxxclub.shijie.service.AlarmService;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-18
 * Time: 下午7:36
 * Describe: 告警列表控制器
 */
@Controller
@RequestMapping("/monitor/alarm")
public class AlarmController {

    @Autowired
    AlarmService alarmService;

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ModelAndView init(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("monitor/alarm/page");
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "list", method = RequestMethod.POST)
    public Object list(@RequestParam(value = "currentIndex", required = false)String current,@RequestParam(value = "pageSize", required = false)String size){
        System.out.println(current+":"+size);
        Map<String,Object> map = new HashedMap();
        map.put("current",Integer.parseInt(current));
        map.put("size",Integer.parseInt(size));
        System.out.println(map.size());
        //List<Alarm> list = alarmService.selectByMap(map);
        return null;
    }
    @ResponseBody
    @RequestMapping(value = "lists", method = RequestMethod.POST)
    public Object lists(){
        //System.out.println(current+":"+size);
        Map<String,Object> map = new HashedMap();
        map.put("current",Integer.parseInt("1"));
        map.put("size",Integer.parseInt("10"));
        System.out.println(map.size());
        List<Alarm> list = alarmService.selectByMap(map);
        return null;
    }
}
