package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzbum extends zzaya implements zzbun {
    public zzbum() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzayb.zzh(parcel);
            zze((ParcelFileDescriptor) zzayb.zzb(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i == 2) {
            zzayb.zzh(parcel);
            zzf((com.google.android.gms.ads.internal.util.zzba) zzayb.zzb(parcel, com.google.android.gms.ads.internal.util.zzba.CREATOR));
        } else if (i != 3) {
            return false;
        } else {
            zzayb.zzh(parcel);
            zzg((ParcelFileDescriptor) zzayb.zzb(parcel, ParcelFileDescriptor.CREATOR), (zzbuv) zzayb.zzb(parcel, zzbuv.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
