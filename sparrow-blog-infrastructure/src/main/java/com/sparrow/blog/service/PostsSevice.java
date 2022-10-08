package com.sparrow.blog.service;

import com.sparrow.blog.protocol.dto.PostsSearchRequestDTO;
import com.sparrow.blog.protocol.dto.PostsSearchResponseDTO;

public interface PostsSevice {
    /**
     * 搜索帖子
     * @param requestDTO
     * @return
     */
    PostsSearchResponseDTO search(PostsSearchRequestDTO requestDTO);

}
