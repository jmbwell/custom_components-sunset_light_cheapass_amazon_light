package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public interface zzcf {
    public static final ByteBuffer zza = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
    /* renamed from: com.google.android.gms.internal.ads.zzcf$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static long $default$zza(zzcf _this, long j) {
            return j;
        }

        @Deprecated
        public static void $default$zzh(zzcf _this) {
            throw new IllegalStateException("AudioProcessor must implement at least one #flush() overload.");
        }
    }

    long zza(long j);

    zzcc zzb(zzcc zzccVar) throws zzce;

    boolean zzc();

    void zzd(ByteBuffer byteBuffer);

    void zze();

    ByteBuffer zzf();

    boolean zzg();

    @Deprecated
    void zzh();

    void zzi(zzcd zzcdVar);

    void zzj();
}
