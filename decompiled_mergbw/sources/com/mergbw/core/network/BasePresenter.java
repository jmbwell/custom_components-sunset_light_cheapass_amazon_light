package com.mergbw.core.network;
/* loaded from: classes4.dex */
public class BasePresenter {
    private int mTotalPageNum;
    private int mTotalSize;
    private int currentPage = 1;
    protected int tempPage = 1;

    public void resetPage() {
        this.currentPage = 1;
        this.tempPage = 1;
    }

    public void moreData() {
        this.tempPage = this.currentPage + 1;
    }

    public void calculatePageNum() {
        this.currentPage = this.tempPage;
    }
}
