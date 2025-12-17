package com.mergbw.core.network.factory.bean;

import java.util.List;
/* loaded from: classes4.dex */
public class FactoryProductInfoBean {
    private List<GoodsInfo> goodsList;
    private int promotionId;
    private String promotionName;

    public int getPromotionId() {
        return this.promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }

    public String getPromotionName() {
        return this.promotionName;
    }

    public void setPromotionName(String promotionName) {
        this.promotionName = promotionName;
    }

    public List<GoodsInfo> getGoodsList() {
        return this.goodsList;
    }

    public void setGoodsList(List<GoodsInfo> goodsList) {
        this.goodsList = goodsList;
    }

    /* loaded from: classes4.dex */
    public static class GoodsInfo {
        private int goodsId;
        private String goodsLink;
        private String goodsName;
        private String goodsPicture;

        public int getGoodsId() {
            return this.goodsId;
        }

        public void setGoodsId(int goodsId) {
            this.goodsId = goodsId;
        }

        public String getGoodsName() {
            return this.goodsName;
        }

        public void setGoodsName(String goodsName) {
            this.goodsName = goodsName;
        }

        public String getGoodsPicture() {
            return this.goodsPicture;
        }

        public void setGoodsPicture(String goodsPicture) {
            this.goodsPicture = goodsPicture;
        }

        public String getGoodsLink() {
            return this.goodsLink;
        }

        public void setGoodsLink(String goodsLink) {
            this.goodsLink = goodsLink;
        }
    }
}
