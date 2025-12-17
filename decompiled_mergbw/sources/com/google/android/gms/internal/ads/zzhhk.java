package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzhhk extends IOException {
    zzhhk() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzhhk(long r2, long r4, int r6, java.lang.Throwable r7) {
        /*
            r1 = this;
            java.util.Locale r0 = java.util.Locale.US
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Long r3 = java.lang.Long.valueOf(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r6)
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 0
            r5[r6] = r2
            r2 = 1
            r5[r2] = r3
            r2 = 2
            r5[r2] = r4
            java.lang.String r2 = "Pos: %d, limit: %d, len: %d"
            java.lang.String r2 = java.lang.String.format(r0, r2, r5)
            java.lang.String.valueOf(r2)
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r3 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
            java.lang.String r2 = r3.concat(r2)
            r1.<init>(r2, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhhk.<init>(long, long, int, java.lang.Throwable):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhhk(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
