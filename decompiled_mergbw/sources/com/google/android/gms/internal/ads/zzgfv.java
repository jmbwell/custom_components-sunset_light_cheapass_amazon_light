package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgfv implements ServiceConnection {
    final /* synthetic */ zzggb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgfv(zzggb zzggbVar, byte[] bArr) {
        Objects.requireNonNull(zzggbVar);
        this.zza = zzggbVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Object[] objArr = {componentName};
        zzggb zzggbVar = this.zza;
        zzggbVar.zzi().zza("LmdServiceConnectionManager.onServiceConnected(%s)", objArr);
        zzggbVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgfu
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IInterface zzm;
                zzgfv zzgfvVar = zzgfv.this;
                zzggb zzggbVar2 = zzgfvVar.zza;
                zzggbVar2.zzn(zzgee.zzb(iBinder));
                zzggbVar2.zzi().zza("linkToDeath", new Object[0]);
                try {
                    zzm = zzggbVar2.zzm();
                } catch (RemoteException e) {
                    zzgfvVar.zza.zzi().zzd(e, "linkToDeath failed", new Object[0]);
                }
                if (zzm != null) {
                    IInterface iInterface = zzm;
                    zzm.asBinder().linkToDeath(zzggbVar2.zzl(), 0);
                    zzggb zzggbVar3 = zzgfvVar.zza;
                    zzggbVar3.zzk(false);
                    synchronized (zzggbVar3.zzj()) {
                        for (Runnable runnable : zzggbVar3.zzj()) {
                            runnable.run();
                        }
                        zzggbVar3.zzj().clear();
                    }
                    return;
                }
                throw null;
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object[] objArr = {componentName};
        zzggb zzggbVar = this.zza;
        zzggbVar.zzi().zza("LmdServiceConnectionManager.onServiceDisconnected(%s)", objArr);
        zzggbVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgft
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzggb zzggbVar2 = zzgfv.this.zza;
                zzggbVar2.zzi().zza("unlinkToDeath", new Object[0]);
                IInterface zzm = zzggbVar2.zzm();
                zzm.getClass();
                zzm.asBinder().unlinkToDeath(zzggbVar2.zzl(), 0);
                zzggbVar2.zzn(null);
                zzggbVar2.zzk(false);
            }
        });
    }
}
