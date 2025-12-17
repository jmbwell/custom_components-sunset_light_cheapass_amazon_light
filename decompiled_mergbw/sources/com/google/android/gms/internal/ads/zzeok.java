package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzeun;
import javax.annotation.Nullable;
import kotlin.time.DurationKt;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzeok implements zzeun {
    @Nullable
    private final Integer zza;

    private zzeok(@Nullable Integer num) {
        this.zza = num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzeok zzc(VersionInfoParcel versionInfoParcel) {
        int extensionVersion;
        int extensionVersion2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzkQ)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            int i = 0;
            try {
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "AdUtil.getAdServicesExtensionVersion");
            }
            if (Build.VERSION.SDK_INT >= 30) {
                extensionVersion2 = SdkExtensions.getExtensionVersion(30);
                if (extensionVersion2 > 3) {
                    i = SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);
                    return new zzeok(Integer.valueOf(i));
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzkT)).booleanValue()) {
                if (versionInfoParcel.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzkS)).intValue() && Build.VERSION.SDK_INT >= 31) {
                    extensionVersion = SdkExtensions.getExtensionVersion(31);
                    if (extensionVersion >= 9) {
                        i = SdkExtensions.getExtensionVersion(31);
                    }
                }
            }
            return new zzeok(Integer.valueOf(i));
        }
        return new zzeok(null);
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Integer num = this.zza;
        zzcuu zzcuuVar = (zzcuu) obj;
        if (num != null) {
            zzcuuVar.zza.putInt("aos", num.intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeun
    public /* synthetic */ void zzb(Object obj) {
        zzeun.CC.$default$zzb(this, obj);
    }
}
