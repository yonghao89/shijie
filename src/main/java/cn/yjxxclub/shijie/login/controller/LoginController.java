package cn.yjxxclub.shijie.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-15
 * Time: 下午9:20
 * Describe: 登录模块controller
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    /**
     * 登录
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("main");
        return mv;
    }
}
