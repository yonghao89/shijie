package cn.yjxxclub.shijie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-16
 * Time: 下午7:55
 * Describe: 登出模块
 */
@Controller
@RequestMapping("/")
public class LogoutController {

    /**
     * 登出
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:index.jsp");
        return mv;
    }
}
