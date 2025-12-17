package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import androidx.lifecycle.CoroutineLiveDataKt;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbcg implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zzg(final SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            try {
                this.zzh = new JSONObject((String) zzbck.zza(new zzght() { // from class: com.google.android.gms.internal.ads.zzbcd
                    @Override // com.google.android.gms.internal.ads.zzght
                    public final /* synthetic */ Object zza() {
                        return sharedPreferences.getString("flag_configuration", "{}");
                    }
                }));
            } catch (JSONException unused) {
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzg(sharedPreferences);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0113, code lost:
        if (new org.json.JSONObject((java.lang.String) com.google.android.gms.internal.ads.zzbck.zza(new com.google.android.gms.internal.ads.zzbce(r3))).optBoolean("local_flags_enabled") != false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0119 A[Catch: all -> 0x0174, TRY_ENTER, TryCatch #4 {, blocks: (B:7:0x0008, B:9:0x000c, B:11:0x000e, B:13:0x0013, B:14:0x0015, B:16:0x0027, B:17:0x002b, B:18:0x002d, B:38:0x0097, B:39:0x009e, B:48:0x00cd, B:49:0x00d4, B:63:0x0119, B:64:0x0120, B:77:0x0162, B:78:0x0169, B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0093, B:41:0x00a0, B:43:0x00a4, B:45:0x00b4, B:47:0x00c9, B:51:0x00d6, B:61:0x0115, B:66:0x0122, B:68:0x012f, B:70:0x013d, B:71:0x0146, B:73:0x0154, B:75:0x0158, B:76:0x015b, B:54:0x00e7, B:56:0x00f5, B:58:0x00fd, B:59:0x0108), top: B:92:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0122 A[Catch: all -> 0x016b, TRY_ENTER, TryCatch #4 {, blocks: (B:7:0x0008, B:9:0x000c, B:11:0x000e, B:13:0x0013, B:14:0x0015, B:16:0x0027, B:17:0x002b, B:18:0x002d, B:38:0x0097, B:39:0x009e, B:48:0x00cd, B:49:0x00d4, B:63:0x0119, B:64:0x0120, B:77:0x0162, B:78:0x0169, B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0093, B:41:0x00a0, B:43:0x00a4, B:45:0x00b4, B:47:0x00c9, B:51:0x00d6, B:61:0x0115, B:66:0x0122, B:68:0x012f, B:70:0x013d, B:71:0x0146, B:73:0x0154, B:75:0x0158, B:76:0x015b, B:54:0x00e7, B:56:0x00f5, B:58:0x00fd, B:59:0x0108), top: B:92:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcg.zza(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb() {
        return this.zzi;
    }

    public final boolean zzc() {
        return this.zzj;
    }

    public final Object zzd(final zzbbz zzbbzVar) {
        if (!this.zzc.block(CoroutineLiveDataKt.DEFAULT_TIMEOUT)) {
            synchronized (this.zzb) {
                if (!this.zza) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzbbzVar.zzf();
            }
        }
        if (zzbbzVar.zzm() == 2) {
            Bundle bundle = this.zzf;
            if (bundle == null) {
                return zzbbzVar.zzf();
            }
            return zzbbzVar.zza(bundle);
        } else if (zzbbzVar.zzm() != 1 || !this.zzh.has(zzbbzVar.zze())) {
            return zzbck.zza(new zzght() { // from class: com.google.android.gms.internal.ads.zzbcf
                @Override // com.google.android.gms.internal.ads.zzght
                public final /* synthetic */ Object zza() {
                    return zzbcg.this.zzf(zzbbzVar);
                }
            });
        } else {
            return zzbbzVar.zzc(this.zzh);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzf(zzbbz zzbbzVar) {
        return zzbbzVar.zzd(this.zze);
    }

    public final Object zze(zzbbz zzbbzVar) {
        return (this.zzd || this.zza) ? zzd(zzbbzVar) : zzbbzVar.zzf();
    }
}
