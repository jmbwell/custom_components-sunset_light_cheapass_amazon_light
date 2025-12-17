package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayb;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzcu extends zzaya implements zzcv {
    public zzcu() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzayb.zzh(parcel);
            zzb((zze) zzayb.zzb(parcel, zze.CREATOR));
        } else if (i == 2) {
            zzc();
        } else if (i == 3) {
            zzd();
        } else if (i == 4) {
            zze();
        } else if (i != 5) {
            return false;
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
