package com.sparrow.blog.controller;


import com.sparrow.blog.controller.base.BaseController;
import com.sparrow.blog.protocol.dto.PostsSearchRequestDTO;
import com.sparrow.blog.protocol.dto.PostsSearchResponseDTO;
import com.sparrow.blog.service.PostsSevice;
import com.sparrow.protocol.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("posts")
public class PostsController extends BaseController {
    @Autowired
    private PostsSevice postsSevice;
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
    public Result<PostsSearchResponseDTO> search(PostsSearchRequestDTO requestDTO){
        final PostsSearchResponseDTO search = postsSevice.search(requestDTO);
        return success(search);
    }

}
