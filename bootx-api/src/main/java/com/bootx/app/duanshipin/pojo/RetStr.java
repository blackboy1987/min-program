/**
  * Copyright 2021 json.cn 
  */
package com.bootx.app.duanshipin.pojo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * Auto-generated: 2021-03-06 15:3:6
 *
 * @author json.cn (i@json.cn)
 * @website http://www.json.cn/java2pojo/
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class RetStr {

    private String itemid;
    private String isLike;
    private String videoid;
    private String videoname;
    private String videoimgurl;
    private String videourl;
    private String channelImgUrl;
    private String time;
    private String channelId;
    private String insertAd;
    private String createuser;
    private Long likecnt;
    private Long commentcnt;
    private Long heat;
    public void setItemid(String itemid) {
         this.itemid = itemid;
     }
     public String getItemid() {
         return itemid;
     }

    public void setIsLike(String isLike) {
         this.isLike = isLike;
     }
     public String getIsLike() {
         return isLike;
     }

    public void setVideoid(String videoid) {
         this.videoid = videoid;
     }
     public String getVideoid() {
         return videoid;
     }

    public void setVideoname(String videoname) {
         this.videoname = videoname;
     }
     public String getVideoname() {
         return videoname;
     }

    public void setVideoimgurl(String videoimgurl) {
         this.videoimgurl = videoimgurl;
     }
     public String getVideoimgurl() {
         return videoimgurl;
     }

    public void setVideourl(String videourl) {
         this.videourl = videourl;
     }
     public String getVideourl() {
         return videourl;
     }

    public void setChannelImgUrl(String channelImgUrl) {
         this.channelImgUrl = channelImgUrl;
     }
     public String getChannelImgUrl() {
         return channelImgUrl;
     }

    public void setTime(String time) {
         this.time = time;
     }
     public String getTime() {
         return time;
     }

    public void setChannelId(String channelId) {
         this.channelId = channelId;
     }
     public String getChannelId() {
         return channelId;
     }

    public void setInsertAd(String insertAd) {
         this.insertAd = insertAd;
     }
     public String getInsertAd() {
         return insertAd;
     }

    public void setCreateuser(String createuser) {
         this.createuser = createuser;
     }
     public String getCreateuser() {
         return createuser;
     }

    public void setLikecnt(Long likecnt) {
         this.likecnt = likecnt;
     }
     public Long getLikecnt() {
         return likecnt;
     }

    public void setCommentcnt(Long commentcnt) {
         this.commentcnt = commentcnt;
     }
     public Long getCommentcnt() {
         return commentcnt;
     }

    public void setHeat(Long heat) {
         this.heat = heat;
     }
     public Long getHeat() {
         return heat;
     }

}