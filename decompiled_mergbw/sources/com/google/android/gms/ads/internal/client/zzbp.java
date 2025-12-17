package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayb;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public abstract class zzbp extends zzaya implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzayb.zzh(parcel);
            zze((zzm) zzayb.zzb(parcel, zzm.CREATOR));
            parcel2.writeNoException();
        } else if (i == 2) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
        } else if (i == 3) {
            boolean zzg = zzg();
            parcel2.writeNoException();
            int i3 = zzayb.zza;
            parcel2.writeInt(zzg ? 1 : 0);
        } else if (i == 4) {
            String zzh = zzh();
            parcel2.writeNoException();
            parcel2.writeString(zzh);
        } else if (i != 5) {
            return false;
        } else {
            int readInt = parcel.readInt();
            zzayb.zzh(parcel);
            zzi((zzm) zzayb.zzb(parcel, zzm.CREATOR), readInt);
            parcel2.writeNoException();
        }
        return true;
    }
}
