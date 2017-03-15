package cn.yjxxclub.shijie.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-15
 * Time: 下午9:01
 * Describe:
 */
@Controller
@RequestMapping("/")
public class IndexController {

    /**
     * index
     * @return
     */
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
}
