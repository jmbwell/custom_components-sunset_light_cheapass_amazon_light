package androidx.privacysandbox.ads.adservices.common;

import android.adservices.adselection.AdSelectionConfig;
import android.adservices.adselection.PersistAdSelectionResultRequest;
import android.adservices.adselection.ReportEventRequest;
import android.adservices.adselection.ReportImpressionRequest;
import android.adservices.adselection.UpdateAdCounterHistogramRequest;
import android.adservices.appsetid.AppSetId;
import android.adservices.appsetid.AppSetIdManager;
import android.adservices.common.AdData;
import android.adservices.common.AdFilters;
import android.adservices.common.FrequencyCapFilters;
import android.adservices.common.KeyedFrequencyCap;
import android.adservices.customaudience.CustomAudience;
import android.adservices.customaudience.CustomAudienceManager;
import android.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import android.adservices.customaudience.JoinCustomAudienceRequest;
import android.adservices.customaudience.LeaveCustomAudienceRequest;
import android.adservices.customaudience.TrustedBiddingData;
import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.net.Uri;
import java.time.Duration;
/* compiled from: D8$$SyntheticClass */
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public final /* synthetic */ class AdFilters$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ PersistAdSelectionResultRequest.Builder m() {
        return new PersistAdSelectionResultRequest.Builder();
    }

    public static /* synthetic */ ReportEventRequest.Builder m(long j, String str, String str2, int i) {
        return new ReportEventRequest.Builder(j, str, str2, i);
    }

    public static /* synthetic */ ReportImpressionRequest m(long j) {
        return new ReportImpressionRequest(j);
    }

    public static /* synthetic */ ReportImpressionRequest m(long j, AdSelectionConfig adSelectionConfig) {
        return new ReportImpressionRequest(j, adSelectionConfig);
    }

    public static /* synthetic */ UpdateAdCounterHistogramRequest.Builder m(long j, int i, android.adservices.common.AdTechIdentifier adTechIdentifier) {
        return new UpdateAdCounterHistogramRequest.Builder(j, i, adTechIdentifier);
    }

    public static /* bridge */ /* synthetic */ AppSetId m(Object obj) {
        return (AppSetId) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AppSetIdManager m240m(Object obj) {
        return (AppSetIdManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ AdData.Builder m241m() {
        return new AdData.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ AdFilters.Builder m242m() {
        return new AdFilters.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ FrequencyCapFilters.Builder m244m() {
        return new FrequencyCapFilters.Builder();
    }

    public static /* synthetic */ KeyedFrequencyCap.Builder m(int i, int i2, Duration duration) {
        return new KeyedFrequencyCap.Builder(i, i2, duration);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ CustomAudience.Builder m245m() {
        return new CustomAudience.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ CustomAudienceManager m247m(Object obj) {
        return (CustomAudienceManager) obj;
    }

    public static /* synthetic */ FetchAndJoinCustomAudienceRequest.Builder m(Uri uri) {
        return new FetchAndJoinCustomAudienceRequest.Builder(uri);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ JoinCustomAudienceRequest.Builder m248m() {
        return new JoinCustomAudienceRequest.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ LeaveCustomAudienceRequest.Builder m249m() {
        return new LeaveCustomAudienceRequest.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ TrustedBiddingData.Builder m250m() {
        return new TrustedBiddingData.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ DeletionRequest.Builder m251m() {
        return new DeletionRequest.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ MeasurementManager m253m(Object obj) {
        return (MeasurementManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m254m() {
        return AppSetIdManager.class;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ void m257m() {
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return CustomAudienceManager.class;
    }

    /* renamed from: m$1  reason: collision with other method in class */
    public static /* synthetic */ void m259m$1() {
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return MeasurementManager.class;
    }

    /* renamed from: m$2  reason: collision with other method in class */
    public static /* synthetic */ void m260m$2() {
    }

    public static /* synthetic */ void m$3() {
    }

    public static /* synthetic */ void m$4() {
    }
}
