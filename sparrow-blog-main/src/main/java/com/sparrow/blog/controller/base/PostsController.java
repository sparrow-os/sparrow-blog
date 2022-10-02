package com.sparrow.blog.controller.base;


import com.sparrow.protocol.Result;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("posts")
public class PostsController extends BaseController{

    /**
     * 添加帖子
     * @return
     */
    @PostMapping("add")
    public Result add(){
        return success();
    }

    /**
     * 更新帖子
     * @return
     */
    @PutMapping("update")
    public Result update(){
        return success();
    }

    /**
     * 搜索帖子
     * @return
     */
    @GetMapping("search")
    public Result search(){
        return success();
    }

}
