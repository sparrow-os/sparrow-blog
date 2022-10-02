package com.sparrow.blog.service.impl;

import com.sparrow.blog.dao.PostsDAO;
import com.sparrow.blog.protocol.dto.PostsSearchRequestDTO;
import com.sparrow.blog.protocol.dto.PostsSearchResponseDTO;
import com.sparrow.blog.service.PostsSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostsSeviceImpl implements PostsSevice {
    @Autowired
    private PostsDAO postsDAO;

    @Override
    public PostsSearchResponseDTO search(PostsSearchRequestDTO requestDTO) {
        return null;
    }
}
