package com.sparrow.blog.controller.base;

import com.sparrow.protocol.Result;

public abstract class BaseController {

    public <T>Result<T> success(T data){
        return new Result<>(data);
    }

    public <T>Result<T> success(){
        return Result.success();
    }
}
