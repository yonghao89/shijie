/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-4-2
 * Time: 上午9:24
 * Describe:
 */

import cn.yjxxclub.shijie.entity.Alarm;
import cn.yjxxclub.shijie.service.AlarmService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-4-1
 * Time: 下午8:58
 * Describe: Test
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring.xml"})
public class UserTest {

    @Autowired
    private AlarmService userService;



    @Test
    public void testSelectByMap() {
        Map<String, Object> columnMap = new HashMap<String, Object>();
        columnMap.put("", "insert");
        columnMap.put("userId", null);
        Alarm userList = userService.selectById(10);
        System.out.print(userList.getEmail());
    }
}
