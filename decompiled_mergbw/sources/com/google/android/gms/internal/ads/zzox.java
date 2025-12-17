package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzox {
    public final String zza;
    private final zzow zzb;
    private final Object zzc;

    static {
        new zzox("");
    }

    public zzox(String str) {
        this.zza = str;
        this.zzb = Build.VERSION.SDK_INT >= 31 ? new zzow() : null;
        this.zzc = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzox) {
            zzox zzoxVar = (zzox) obj;
            return Objects.equals(this.zza, zzoxVar.zza) && Objects.equals(this.zzb, zzoxVar.zzb) && Objects.equals(this.zzc, zzoxVar.zzc);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb, this.zzc);
    }

    public final synchronized LogSessionId zza() {
        zzow zzowVar;
        zzowVar = this.zzb;
        if (zzowVar != null) {
            zzow zzowVar2 = zzowVar;
        } else {
            throw null;
        }
        return zzowVar.zza;
    }

    public final synchronized void zzb(LogSessionId logSessionId) {
        LogSessionId logSessionId2;
        boolean equals;
        zzow zzowVar = this.zzb;
        if (zzowVar != null) {
            zzow zzowVar2 = zzowVar;
            LogSessionId logSessionId3 = zzowVar.zza;
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId3.equals(logSessionId2);
            zzghc.zzh(equals);
            zzowVar.zza = logSessionId;
        } else {
            throw null;
        }
    }
}
