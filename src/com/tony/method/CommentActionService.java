package com.tony.method;

import java.util.List;

import com.tony.model.Comment;

public interface CommentActionService {
	//根据商品大类别和小分类取相关评论信息
	public List<Comment> queryCommentList(int pageid,int goodsid);
	//插入评论信息
	public String insertComment(Comment comment);
}
