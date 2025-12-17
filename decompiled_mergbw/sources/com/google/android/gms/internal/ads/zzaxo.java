package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.util.zzb$$ExternalSyntheticApiModelOutline0;
import java.security.cert.CertificateEncodingException;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzaxo {
    public static String zza(Context context, String str, List list, Executor executor) throws CertificateEncodingException, PackageManager.NameNotFoundException, InterruptedException, ExecutionException {
        if (Build.VERSION.SDK_INT > 30 || Build.VERSION.CODENAME.equals(ExifInterface.LATITUDE_SOUTH)) {
            final zzgpm zze = zzgpm.zze();
            context.getPackageManager().requestChecksums(str, false, 8, list, new PackageManager$OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaxn
                public final /* synthetic */ void onChecksumsReady(List list2) {
                    int type;
                    byte[] value;
                    zzgpm zzgpmVar = zzgpm.this;
                    if (list2 == null) {
                        zzgpmVar.zza((Object) null);
                        return;
                    }
                    try {
                        int size = list2.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum m513m = zzb$$ExternalSyntheticApiModelOutline0.m513m(list2.get(i));
                            type = m513m.getType();
                            if (type == 8) {
                                value = m513m.getValue();
                                zzgpmVar.zza(zzawa.zza(value));
                                return;
                            }
                        }
                        zzgpmVar.zza((Object) null);
                    } catch (Throwable unused) {
                        zzgpmVar.zza((Object) null);
                    }
                }
            });
            return (String) zze.get();
        }
        return null;
    }
}
