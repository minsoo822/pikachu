package com.actorfw.infra.modules.xoditionpost;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OditionPostDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.actorfw.infra.modules.xoditionpost.OditionPostMapper";
	
//	오디션게시판리스트
	public List<OditionPost> oditionList(OditionPostVo vo) {
		return sqlSession.selectList(namespace + ".oditionList", vo);
	}
//	오디션세시물 샹세뷰
	public OditionPost oditionView(OditionPostVo vo) {
	    return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
//	오디션정보Inst
	public int insrtOdition(OditionPost dto) {
		return sqlSession.insert(namespace +".insrtOdition", dto);
	}
	
	public int selectOneCount(OditionPostVo vo) {
	    return sqlSession.selectOne(namespace + ".selectOneCount" , vo);
	}
	
	public int insertOditionUpload(OditionPost dto) {
	    return sqlSession.insert(namespace + ".insertOditionUpload", dto);
	}
	public int selectLastSeq() {
	    return sqlSession.selectOne(namespace + ".selectLastSeq", "");
	}
	
    /* 댓글 */
	public List<OditionPost> postComentList(OditionPostVo vo) { 
	    return sqlSession.selectList(namespace + ".postComentList", vo);
	    }
	public int insertComnt(OditionPost dto) { 
        return sqlSession.insert(namespace + ".insertComnt", dto);
        }
	public OditionPost comentOne(OditionPost dto) {
	    return sqlSession.selectOne(namespace + ".comentOne", dto);
	}
//	댓글 카운트
//	public int postComentCount(OditionPostVo vo) {
//        return sqlSession.selectOne(namespace + ".postComentCount" , vo);
//    }
}
