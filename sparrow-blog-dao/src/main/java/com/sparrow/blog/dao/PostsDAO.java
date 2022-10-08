package com.sparrow.blog.dao;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sparrow.blog.dao.dos.PostsEntityDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PostsDAO extends BaseMapper<PostsEntityDO> {

}
