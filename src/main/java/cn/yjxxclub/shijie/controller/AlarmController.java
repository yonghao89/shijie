package cn.yjxxclub.shijie.controller;



import cn.yjxxclub.base.controller.BaseController;
import cn.yjxxclub.shijie.entity.Alarm;
import cn.yjxxclub.shijie.service.AlarmService;
import com.baomidou.mybatisplus.plugins.Page;
import net.sf.json.JSONObject;
import org.apache.commons.collections.map.HashedMap;
import org.python.antlr.op.In;
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
public class AlarmController extends BaseController {

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
    public Object list(@RequestParam(value = "currentIndex", required = false)Integer current,
                       @RequestParam(value = "pageSize", required = false)Integer size){
        System.out.println(current+":"+size);
        Page<Alarm> page =new Page(current,size);
        Page<Alarm> list = alarmService.selectPage(page,null);
        System.out.println(list.getRecords());
        JSONObject result=new JSONObject();
        result.put("success",true);
        result.put("data",list.getRecords());
        Integer allSize = alarmService.selectCount(null);
        result.put("pages",allSize);
        return result;
    }
}
