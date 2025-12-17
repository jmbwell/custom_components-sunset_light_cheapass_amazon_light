package com.franmontiel.persistentcookiejar;

import okhttp3.CookieJar;
/* loaded from: classes3.dex */
public interface ClearableCookieJar extends CookieJar {
    void clear();

    void clearSession();
}
