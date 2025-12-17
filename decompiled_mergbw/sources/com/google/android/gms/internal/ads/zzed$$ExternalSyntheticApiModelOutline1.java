package com.google.android.gms.internal.ads;

import android.media.AudioProfile;
import android.media.AudioRouting$OnRoutingChangedListener;
import android.media.MediaCodec;
import android.media.RouteDiscoveryPreference;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import java.util.List;
/* compiled from: D8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class zzed$$ExternalSyntheticApiModelOutline1 {
    public static /* bridge */ /* synthetic */ AudioProfile m(Object obj) {
        return (AudioProfile) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AudioRouting$OnRoutingChangedListener m539m(Object obj) {
        return (AudioRouting$OnRoutingChangedListener) obj;
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern m(int i, int i2) {
        return new MediaCodec.CryptoInfo.Pattern(i, i2);
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder m(List list, boolean z) {
        return new RouteDiscoveryPreference.Builder(list, z);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ MediaMetricsManager m540m(Object obj) {
        return (MediaMetricsManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ NetworkEvent.Builder m541m() {
        return new NetworkEvent.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ PlaybackErrorEvent.Builder m542m() {
        return new PlaybackErrorEvent.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ PlaybackMetrics.Builder m543m() {
        return new PlaybackMetrics.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ PlaybackMetrics.Builder m544m(Object obj) {
        return (PlaybackMetrics.Builder) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ PlaybackStateEvent.Builder m545m() {
        return new PlaybackStateEvent.Builder();
    }

    public static /* synthetic */ TrackChangeEvent.Builder m(int i) {
        return new TrackChangeEvent.Builder(i);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ void m548m() {
    }
}
