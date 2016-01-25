package cn.edu.csu.douban.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Created by weigang.lu on 2016/1/23.
 */
public class BeanUtil {

    public static void combine(Object obj1, Object obj2) {
        try {
            Class<?> cls = obj1.getClass();
            Field[] fields = cls.getDeclaredFields();
            for (Field field : fields) {
                PropertyDescriptor propertyDescriptor = new PropertyDescriptor(field.getName(), cls);
                Method readMethod = propertyDescriptor.getReadMethod();
                Method writeMethod = propertyDescriptor.getWriteMethod();
                Object value = readMethod.invoke(obj1);
                if (value == null) {
                    Object value2 = readMethod.invoke(obj2);
                    writeMethod.invoke(obj1, value2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
