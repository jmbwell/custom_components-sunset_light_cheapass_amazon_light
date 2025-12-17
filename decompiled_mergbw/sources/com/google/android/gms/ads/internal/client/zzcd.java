package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayb;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzcd extends zzaya implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzayb.zzh(parcel);
            zze((zzft) zzayb.zzb(parcel, zzft.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zzayb.zzh(parcel);
            zzf((zzft) zzayb.zzb(parcel, zzft.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
