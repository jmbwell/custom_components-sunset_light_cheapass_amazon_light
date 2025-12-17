package com.google.android.gms.internal.ads;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfvk implements zzfve {
    private final ExecutorService zza;
    private final String zzb;
    private final long zzc;

    public zzfvk(ExecutorService executorService, String str, long j) {
        this.zza = executorService;
        this.zzb = str;
        this.zzc = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final /* synthetic */ void zzd(java.lang.String r6, androidx.concurrent.futures.CallbackToFutureAdapter.Completer r7, boolean r8, java.lang.String r9, byte[] r10) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvk.zzd(java.lang.String, androidx.concurrent.futures.CallbackToFutureAdapter$Completer, boolean, java.lang.String, byte[]):void");
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final ListenableFuture zza(final String str, final byte[] bArr, String str2) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(str, true, "application/x-protobuf", bArr) { // from class: com.google.android.gms.internal.ads.zzfvh
            private final /* synthetic */ String zzb;
            private final /* synthetic */ String zzc = "application/x-protobuf";
            private final /* synthetic */ byte[] zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzd = bArr;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return zzfvk.this.zzb(this.zzb, true, this.zzc, this.zzd, completer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzb(final String str, boolean z, String str2, final byte[] bArr, final CallbackToFutureAdapter.Completer completer) {
        this.zza.execute(new Runnable(str, completer, true, "application/x-protobuf", bArr) { // from class: com.google.android.gms.internal.ads.zzfvg
            private final /* synthetic */ String zzb;
            private final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
            private final /* synthetic */ String zzd = "application/x-protobuf";
            private final /* synthetic */ byte[] zze;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zze = bArr;
            }

            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfvk.this.zzc(this.zzb, this.zzc, true, this.zzd, this.zze);
            }
        });
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(String str, CallbackToFutureAdapter.Completer completer, boolean z, String str2, byte[] bArr) {
        zzd(str, completer, true, "application/x-protobuf", bArr);
    }
}
