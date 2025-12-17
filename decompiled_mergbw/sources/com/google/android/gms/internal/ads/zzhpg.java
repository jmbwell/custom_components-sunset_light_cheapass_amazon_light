package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzhpg extends zzhpe implements zzaqs {
    private int zzg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzhpg(String str) {
        super("mvhd");
    }

    public final int zzg() {
        if (!this.zzb) {
            zzf();
        }
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzh(ByteBuffer byteBuffer) {
        this.zzg = zzaqr.zzc(byteBuffer.get());
        zzaqr.zzb(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
