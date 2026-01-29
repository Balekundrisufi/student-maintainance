package com.portal.aop;

import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {
    @Before("execution(* com.portal.service.*.*(..))")
    public void log() {
        System.out.println("Service method called...");
    }
}