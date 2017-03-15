package cn.yjxxclub.shijie.base;

import cn.yjxxclub.base.controller.BaseController;
import cn.yjxxclub.base.util.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Author: tengxing
 * Email: tengxing7452@163.com
 * Date: 17-3-15
 * Time: 下午6:16
 * Describe: 测试
 */
@RestController
@RequestMapping("/test")
public class TestController extends BaseController{

    @RequestMapping(value = "hello", method = RequestMethod.GET)
    public Object hello(){
        System.out.println("--exe--");
        return renderSuccess("hello world");
    }

}
