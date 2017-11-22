package cn.guet.mooc.tool;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by zogod on 17/11/22.
 */
public class TimeTool
{
    public static String GetDateString(Date date)
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(date);
    }
}
