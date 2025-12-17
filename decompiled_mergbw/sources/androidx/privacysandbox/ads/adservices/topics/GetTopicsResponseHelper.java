package androidx.privacysandbox.ads.adservices.topics;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.tracing.Trace$$ExternalSyntheticApiModelOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetTopicsResponseHelper.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;", "", "()V", "convertResponse", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "response", "Landroid/adservices/topics/GetTopicsResponse;", "convertResponse$ads_adservices_release", "convertResponseWithEncryptedTopics", "convertResponseWithEncryptedTopics$ads_adservices_release", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: classes.dex */
public final class GetTopicsResponseHelper {
    public static final GetTopicsResponseHelper INSTANCE = new GetTopicsResponseHelper();

    private GetTopicsResponseHelper() {
    }

    public final GetTopicsResponse convertResponse$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        List<Object> topics;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        Intrinsics.checkNotNullParameter(response, "response");
        ArrayList arrayList = new ArrayList();
        topics = response.getTopics();
        for (Object obj : topics) {
            android.adservices.topics.Topic m406m = Trace$$ExternalSyntheticApiModelOutline0.m406m(obj);
            taxonomyVersion = m406m.getTaxonomyVersion();
            modelVersion = m406m.getModelVersion();
            topicId = m406m.getTopicId();
            arrayList.add(new Topic(taxonomyVersion, modelVersion, topicId));
        }
        return new GetTopicsResponse(arrayList);
    }

    @ExperimentalFeatures.Ext11OptIn
    public final GetTopicsResponse convertResponseWithEncryptedTopics$ads_adservices_release(android.adservices.topics.GetTopicsResponse response) {
        List<Object> topics;
        List<Object> encryptedTopics;
        byte[] encryptedTopic;
        String keyIdentifier;
        byte[] encapsulatedKey;
        long taxonomyVersion;
        long modelVersion;
        int topicId;
        Intrinsics.checkNotNullParameter(response, "response");
        ArrayList arrayList = new ArrayList();
        topics = response.getTopics();
        for (Object obj : topics) {
            android.adservices.topics.Topic m406m = Trace$$ExternalSyntheticApiModelOutline0.m406m(obj);
            taxonomyVersion = m406m.getTaxonomyVersion();
            modelVersion = m406m.getModelVersion();
            topicId = m406m.getTopicId();
            arrayList.add(new Topic(taxonomyVersion, modelVersion, topicId));
        }
        ArrayList arrayList2 = new ArrayList();
        encryptedTopics = response.getEncryptedTopics();
        for (Object obj2 : encryptedTopics) {
            android.adservices.topics.EncryptedTopic m = Trace$$ExternalSyntheticApiModelOutline0.m(obj2);
            encryptedTopic = m.getEncryptedTopic();
            Intrinsics.checkNotNullExpressionValue(encryptedTopic, "encryptedTopic.encryptedTopic");
            keyIdentifier = m.getKeyIdentifier();
            Intrinsics.checkNotNullExpressionValue(keyIdentifier, "encryptedTopic.keyIdentifier");
            encapsulatedKey = m.getEncapsulatedKey();
            Intrinsics.checkNotNullExpressionValue(encapsulatedKey, "encryptedTopic.encapsulatedKey");
            arrayList2.add(new EncryptedTopic(encryptedTopic, keyIdentifier, encapsulatedKey));
        }
        return new GetTopicsResponse(arrayList, arrayList2);
    }
}
