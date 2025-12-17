package com.mergbw.core.network.factory.bean;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class FactoryInfoBean implements Serializable {
    private String avatar;
    private String email;
    private String nickName;
    private String phonenumber;
    private String promotionPicture;
    private String remark;
    private int roleType;
    private String siteCode;
    private List<SiteInfo> siteList;
    private int userId;

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getNickName() {
        return this.nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return this.phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public int getRoleType() {
        return this.roleType;
    }

    public void setRoleType(int roleType) {
        this.roleType = roleType;
    }

    public String getPromotionPicture() {
        return this.promotionPicture;
    }

    public void setPromotionPicture(String promotionPicture) {
        this.promotionPicture = promotionPicture;
    }

    public String getSiteCode() {
        return this.siteCode;
    }

    public void setSiteCode(String siteCode) {
        this.siteCode = siteCode;
    }

    public List<SiteInfo> getSiteList() {
        return this.siteList;
    }

    public void setSiteList(List<SiteInfo> siteList) {
        this.siteList = siteList;
    }

    /* loaded from: classes4.dex */
    public static class SiteInfo implements Serializable {
        private String siteCode;
        private String siteName;

        public String getSiteCode() {
            return this.siteCode;
        }

        public void setSiteCode(String siteCode) {
            this.siteCode = siteCode;
        }

        public String getSiteName() {
            return this.siteName;
        }

        public void setSiteName(String siteName) {
            this.siteName = siteName;
        }
    }
}
