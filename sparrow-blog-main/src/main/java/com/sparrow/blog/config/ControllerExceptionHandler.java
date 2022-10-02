package com.sparrow.blog.config;

import com.sparrow.protocol.BusinessException;
import com.sparrow.protocol.Result;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ControllerExceptionHandler {

    @ExceptionHandler(BusinessException.class)
    public Result exception(BusinessException e){
        return Result.fail(e);
    }

    @ExceptionHandler(Exception.class)
    public Result exception(Exception e){
        return Result.fail();
    }

}
