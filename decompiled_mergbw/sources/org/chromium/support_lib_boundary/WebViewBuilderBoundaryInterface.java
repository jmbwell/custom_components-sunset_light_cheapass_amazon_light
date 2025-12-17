package org.chromium.support_lib_boundary;

import android.content.Context;
import android.webkit.WebView;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.jspecify.annotations.NullMarked;
import retrofit2.Platform$$ExternalSyntheticApiModelOutline0;
@NullMarked
/* loaded from: classes5.dex */
public interface WebViewBuilderBoundaryInterface {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Baseline {
        public static final int DEFAULT = 0;
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ConfigField {
        public static final int BASELINE = 0;
        public static final int JAVASCRIPT_INTERFACE = 1;
    }

    WebView build(Context context, Consumer<BiConsumer<Integer, Object>> consumer);

    /* loaded from: classes5.dex */
    public static class Config implements Consumer<BiConsumer<Integer, Object>> {
        public int baseline = 0;
        List<Object> mJavascriptInterfaceObjects = new ArrayList();
        List<String> mJavascriptInterfaceNames = new ArrayList();
        List<List<String>> mJavascriptInterfaceSitePatterns = new ArrayList();

        @Override // java.util.function.Consumer
        public /* bridge */ /* synthetic */ void accept(BiConsumer<Integer, Object> biConsumer) {
            accept2(Platform$$ExternalSyntheticApiModelOutline0.m2913m((Object) biConsumer));
        }

        public void addJavascriptInterface(Object obj, String str, List<String> list) {
            this.mJavascriptInterfaceObjects.add(obj);
            this.mJavascriptInterfaceNames.add(str);
            this.mJavascriptInterfaceSitePatterns.add(list);
        }

        /* renamed from: accept  reason: avoid collision after fix types in other method */
        public void accept2(BiConsumer<Integer, Object> biConsumer) {
            biConsumer.accept(0, Integer.valueOf(this.baseline));
            biConsumer.accept(1, new Object[]{this.mJavascriptInterfaceObjects, this.mJavascriptInterfaceNames, this.mJavascriptInterfaceSitePatterns});
        }
    }
}
