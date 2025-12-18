package androidx.tracing;

import android.adservices.measurement.WebSourceParams;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerParams;
import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.adservices.signals.UpdateSignalsRequest;
import android.adservices.topics.EncryptedTopic;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import android.net.Uri;
import android.webkit.TracingConfig;
import java.util.List;
/* compiled from: D8$$SyntheticClass */
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public final /* synthetic */ class Trace$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ WebSourceParams.Builder m(Uri uri) {
        return new WebSourceParams.Builder(uri);
    }

    public static /* synthetic */ WebSourceRegistrationRequest.Builder m(List list, Uri uri) {
        return new WebSourceRegistrationRequest.Builder(list, uri);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ WebTriggerParams.Builder m445m(Uri uri) {
        return new WebTriggerParams.Builder(uri);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ WebTriggerRegistrationRequest.Builder m446m(List list, Uri uri) {
        return new WebTriggerRegistrationRequest.Builder(list, uri);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ UpdateSignalsRequest.Builder m447m(Uri uri) {
        return new UpdateSignalsRequest.Builder(uri);
    }

    public static /* bridge */ /* synthetic */ EncryptedTopic m(Object obj) {
        return (EncryptedTopic) obj;
    }

    public static /* synthetic */ GetTopicsRequest.Builder m() {
        return new GetTopicsRequest.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ GetTopicsResponse m448m(Object obj) {
        return (GetTopicsResponse) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Topic m449m(Object obj) {
        return (Topic) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ TopicsManager m451m(Object obj) {
        return (TopicsManager) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ TracingConfig.Builder m456m() {
        return new TracingConfig.Builder();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m463m() {
        return TopicsManager.class;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ void m465m() {
    }

    public static /* synthetic */ void m$1() {
    }

    public static /* synthetic */ void m$2() {
    }

    public static /* synthetic */ void m$3() {
    }

    public static /* synthetic */ void m$4() {
    }
}
