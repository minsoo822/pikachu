package com.actorfw.infra.modules.xoditionpost;

import com.actorfw.infra.common.base.BaseVo;

public class OditionPostVo extends BaseVo {
    
    private String seq;
    private String post_odition_seq;
    private String type;
    private String odition_seq;
    
    private String path;
    private String uuidName;
    

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getPost_odition_seq() {
        return post_odition_seq;
    }

    public void setPost_odition_seq(String post_odition_seq) {
        this.post_odition_seq = post_odition_seq;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOdition_seq() {
        return odition_seq;
    }

    public void setOdition_seq(String odition_seq) {
        this.odition_seq = odition_seq;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getUuidName() {
        return uuidName;
    }

    public void setUuidName(String uuidName) {
        this.uuidName = uuidName;
    }
    
    
    
    

}
