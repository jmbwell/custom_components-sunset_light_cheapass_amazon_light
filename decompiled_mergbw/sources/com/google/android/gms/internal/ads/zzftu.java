package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzftu {
    public static ListenableFuture zza(Task task, CancellationTokenSource cancellationTokenSource) {
        final zzfts zzftsVar = new zzfts(task, null);
        task.addOnCompleteListener(zzgpk.zza(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzftt
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task2) {
                zzfts zzftsVar2 = zzfts.this;
                if (task2.isCanceled()) {
                    zzftsVar2.cancel(false);
                } else if (task2.isSuccessful()) {
                    zzftsVar2.zza(task2.getResult());
                } else {
                    Exception exception = task2.getException();
                    if (exception != null) {
                        zzftsVar2.zzb(exception);
                        return;
                    }
                    throw new IllegalStateException();
                }
            }
        });
        return zzftsVar;
    }
}
