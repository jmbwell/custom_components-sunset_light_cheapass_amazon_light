package com.google.firebase;

import android.content.res.loader.ResourcesLoader;
import android.graphics.drawable.ColorStateListDrawable;
import android.media.MediaCodecInfo;
import android.media.Spatializer;
import android.view.autofill.AutofillManager;
import java.util.Comparator;
import java.util.PriorityQueue;
/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class Timestamp$$ExternalSyntheticApiModelOutline0 {
    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ ResourcesLoader m643m() {
        return new ResourcesLoader();
    }

    public static /* bridge */ /* synthetic */ ColorStateListDrawable m(Object obj) {
        return (ColorStateListDrawable) obj;
    }

    public static /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint m(int i, int i2, int i3) {
        return new MediaCodecInfo.VideoCapabilities.PerformancePoint(i, i2, i3);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint m645m(Object obj) {
        return (MediaCodecInfo.VideoCapabilities.PerformancePoint) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Spatializer m646m(Object obj) {
        return (Spatializer) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AutofillManager m647m(Object obj) {
        return (AutofillManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m650m() {
        return AutofillManager.class;
    }

    public static /* synthetic */ PriorityQueue m(Comparator comparator) {
        return new PriorityQueue(comparator);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ void m654m() {
    }

    public static /* bridge */ /* synthetic */ boolean m(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m658m(Object obj) {
        return obj instanceof ColorStateListDrawable;
    }

    public static /* synthetic */ void m$1() {
    }

    public static /* bridge */ /* synthetic */ boolean m$1(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    public static /* synthetic */ void m$2() {
    }

    public static /* bridge */ /* synthetic */ boolean m$2(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    public static /* synthetic */ void m$3() {
    }

    public static /* bridge */ /* synthetic */ boolean m$3(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }
}
