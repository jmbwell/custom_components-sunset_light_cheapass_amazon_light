package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbuv;
import com.google.android.gms.internal.ads.zzdru;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbj {
    public final String zza;
    public String zzb;
    public zzbuv zzd;
    public Bundle zze;
    private long zzg;
    private long zzh;
    public String zzc = null;
    public Bundle zzf = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzbj(JsonReader jsonReader, zzbuv zzbuvVar) throws IOException {
        Bundle bundle;
        char c2;
        this.zzg = -1L;
        this.zzh = -1L;
        this.zzd = zzbuvVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -995427962:
                    if (nextName.equals("params")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                str = jsonReader.nextString();
            } else if (c2 == 1) {
                hashMap = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (c2 == 2) {
                this.zzg = jsonReader.nextLong();
            } else if (c2 == 3) {
                this.zzh = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzcr)).booleanValue() || zzbuvVar == null || (bundle = zzbuvVar.zzm) == null) {
            return;
        }
        bundle.putLong(zzdru.GET_SIGNALS_SDKCORE_START.zza(), this.zzg);
        zzbuvVar.zzm.putLong(zzdru.GET_SIGNALS_SDKCORE_END.zza(), this.zzh);
    }
}
