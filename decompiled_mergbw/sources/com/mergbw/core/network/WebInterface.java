package com.mergbw.core.network;

import com.mergbw.core.network.app.bean.CommonResult;
/* loaded from: classes4.dex */
public interface WebInterface {
    void noMoreData();

    void showError(int api);

    void showResult(int api, CommonResult result);
}
