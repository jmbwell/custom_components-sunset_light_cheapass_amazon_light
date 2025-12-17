package androidx.webkit;

import java.util.ArrayList;
import java.util.List;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
/* loaded from: classes.dex */
public final class Policy {
    private final List<ConfigRunnable> mBehaviors;

    /* loaded from: classes.dex */
    private interface ConfigRunnable {
        void configure(WebViewBuilderBoundaryInterface.Config config) throws WebViewBuilderException;
    }

    private Policy(List<ConfigRunnable> list) {
        this.mBehaviors = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void configure(WebViewBuilderBoundaryInterface.Config config) throws WebViewBuilderException {
        for (ConfigRunnable configRunnable : this.mBehaviors) {
            configRunnable.configure(config);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        final List<ConfigRunnable> mBehaviors = new ArrayList();

        public Policy build() {
            return new Policy(this.mBehaviors);
        }
    }
}
