package com.alibaba.android.arouter.facade.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public @interface Autowired {
    String desc() default "";

    String name() default "";

    boolean required() default false;
}
