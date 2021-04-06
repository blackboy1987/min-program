package com.bootx.app.duanshipin.entity;

import com.bootx.entity.BaseEntity;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "duanshipin_short_video")
public class ShortVideo extends BaseEntity<Long> {

    @NotEmpty
    @Column(nullable = false,updatable = false,unique = true)
    private String videoId;

    @ManyToOne(fetch = FetchType.LAZY)
    private ShortVideoChannel shortVideoChannel;

    private String title;

    private String channelId;

    @Column(length = 2000)
    private String description;

    private Long duration;

    private Long size;

    private String time;

    private String videoImage;

    private String videoUrl;

    private Date uploadTime;

    private String tags;

    @NotNull
    @Min(0)
    @Column(nullable = false)
    private Long readCount;

    @NotNull
    @Min(0)
    @Column(nullable = false)
    private Long shareCount;

    @NotNull
    @Min(0)
    @Column(nullable = false)
    private Long commentCount;

    @NotNull
    @Min(0)
    @Column(nullable = false)
    private Long likeCount;

    public String getVideoId() {
        return videoId;
    }

    public void setVideoId(String videoId) {
        this.videoId = videoId;
    }

    public ShortVideoChannel getShortVideoChannel() {
        return shortVideoChannel;
    }

    public void setShortVideoChannel(ShortVideoChannel shortVideoChannel) {
        this.shortVideoChannel = shortVideoChannel;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getChannelId() {
        return channelId;
    }

    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getDuration() {
        return duration;
    }

    public void setDuration(Long duration) {
        this.duration = duration;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getVideoImage() {
        return videoImage;
    }

    public void setVideoImage(String videoImage) {
        this.videoImage = videoImage;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Long getReadCount() {
        return readCount;
    }

    public void setReadCount(Long readCount) {
        this.readCount = readCount;
    }

    public Long getShareCount() {
        return shareCount;
    }

    public void setShareCount(Long shareCount) {
        this.shareCount = shareCount;
    }

    public Long getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Long commentCount) {
        this.commentCount = commentCount;
    }

    public Long getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Long likeCount) {
        this.likeCount = likeCount;
    }
}
