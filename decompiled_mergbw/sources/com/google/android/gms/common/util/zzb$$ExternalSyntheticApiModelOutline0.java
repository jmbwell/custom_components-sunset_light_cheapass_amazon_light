package com.google.android.gms.common.util;

import android.app.ActivityOptions;
import android.app.LocaleManager;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.media.AudioFocusRequest;
import dalvik.system.DelegateLastClassLoader;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.concurrent.atomic.DoubleAdder;
import java.util.concurrent.atomic.LongAdder;
/* compiled from: D8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzb$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ ActivityOptions m(ActivityOptions activityOptions, int i) {
        return activityOptions.setPendingIntentBackgroundActivityStartMode(i);
    }

    public static /* bridge */ /* synthetic */ LocaleManager m(Object obj) {
        return (LocaleManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ApkChecksum m513m(Object obj) {
        return (ApkChecksum) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ImageDecoder.Source m516m(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AnimatedImageDrawable m517m(Object obj) {
        return (AnimatedImageDrawable) obj;
    }

    public static /* synthetic */ AudioFocusRequest.Builder m(int i) {
        return new AudioFocusRequest.Builder(i);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AudioFocusRequest m518m(Object obj) {
        return (AudioFocusRequest) obj;
    }

    public static /* synthetic */ DelegateLastClassLoader m(String str, ClassLoader classLoader) {
        return new DelegateLastClassLoader(str, classLoader);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m520m() {
        return OptionalDouble.class;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Optional m521m(Object obj) {
        return (Optional) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OptionalLong m523m(Object obj) {
        return (OptionalLong) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ DoubleAdder m524m(Object obj) {
        return (DoubleAdder) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ LongAdder m525m(Object obj) {
        return (LongAdder) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ void m526m() {
    }

    public static /* bridge */ /* synthetic */ boolean m(PackageManager packageManager, String str) {
        return packageManager.isInstantApp(str);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m531m(Object obj) {
        return obj instanceof Optional;
    }

    /* renamed from: m$1  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m535m$1() {
        return LocaleManager.class;
    }

    /* renamed from: m$1  reason: collision with other method in class */
    public static /* synthetic */ void m536m$1() {
    }

    public static /* bridge */ /* synthetic */ boolean m$1(Object obj) {
        return obj instanceof OptionalLong;
    }

    public static /* bridge */ /* synthetic */ boolean m$2(Object obj) {
        return obj instanceof LongAdder;
    }

    public static /* bridge */ /* synthetic */ boolean m$3(Object obj) {
        return obj instanceof DoubleAdder;
    }

    public static /* bridge */ /* synthetic */ boolean m$4(Object obj) {
        return obj instanceof AnimatedImageDrawable;
    }
}
