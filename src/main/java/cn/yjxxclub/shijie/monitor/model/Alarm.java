package cn.yjxxclub.shijie.monitor.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * Author: 遇见小星
 * Email: tengxing7452@163.com
 * Date: 17-3-19
 * Time: 下午10:33
 * Describe:
 */
@TableName(value = "sj_alarm")
public class Alarm {
    private static final long serialVersionUID = 1L;

    @TableId(value = "id")
    Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
