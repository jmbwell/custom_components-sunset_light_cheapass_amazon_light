package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzsw extends Exception {
    public final String zza;
    public final boolean zzb;
    public final zzst zzc;
    public final String zzd;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzsw(com.google.android.gms.internal.ads.zzu r12, java.lang.Throwable r13, boolean r14, int r15) {
        /*
            r11 = this;
            java.lang.String r14 = r12.toString()
            java.lang.String r0 = java.lang.String.valueOf(r15)
            int r0 = r0.length()
            int r1 = r14.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r0 = r0 + 25
            int r0 = r0 + r1
            r2.<init>(r0)
            java.lang.String r0 = "Decoder init failed: ["
            r2.append(r0)
            r2.append(r15)
            java.lang.String r0 = "], "
            r2.append(r0)
            r2.append(r14)
            java.lang.String r4 = r2.toString()
            java.lang.String r6 = r12.zzo
            int r12 = java.lang.Math.abs(r15)
            java.lang.String r14 = java.lang.String.valueOf(r12)
            int r14 = r14.length()
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            int r14 = r14 + 60
            r15.<init>(r14)
            java.lang.String r14 = "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_"
            r15.append(r14)
            r15.append(r12)
            java.lang.String r9 = r15.toString()
            r10 = 0
            r7 = 0
            r8 = 0
            r3 = r11
            r5 = r13
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsw.<init>(com.google.android.gms.internal.ads.zzu, java.lang.Throwable, boolean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzsw zza(zzsw zzswVar) {
        return new zzsw(getMessage(), getCause(), this.zza, false, this.zzc, this.zzd, zzswVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzsw(com.google.android.gms.internal.ads.zzu r9, java.lang.Throwable r10, boolean r11, com.google.android.gms.internal.ads.zzst r12) {
        /*
            r8 = this;
            java.lang.String r0 = r12.zza
            int r1 = r0.length()
            java.lang.String r3 = r9.toString()
            int r4 = r3.length()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r1 = r1 + 23
            int r1 = r1 + r4
            r6.<init>(r1)
            java.lang.String r1 = "Decoder init failed: "
            r6.append(r1)
            r6.append(r0)
            java.lang.String r0 = ", "
            r6.append(r0)
            r6.append(r3)
            java.lang.String r1 = r6.toString()
            java.lang.String r3 = r9.zzo
            boolean r0 = r10 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L38
            r0 = r10
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            goto L39
        L38:
            r0 = 0
        L39:
            r6 = r0
            r4 = 0
            r7 = 0
            r0 = r8
            r2 = r10
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsw.<init>(com.google.android.gms.internal.ads.zzu, java.lang.Throwable, boolean, com.google.android.gms.internal.ads.zzst):void");
    }

    private zzsw(String str, Throwable th, String str2, boolean z, zzst zzstVar, String str3, zzsw zzswVar) {
        super(str, th);
        this.zza = str2;
        this.zzb = false;
        this.zzc = zzstVar;
        this.zzd = str3;
    }
}
