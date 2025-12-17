package com.google.android.gms.internal.ads;

import com.bumptech.glide.load.Key;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzboa {
    private static final Charset zzc = Charset.forName(Key.STRING_CHARSET_NAME);
    public static final zzbnx zza = new zzbny();
    public static final zzbnv zzb = zzbnz.zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ InputStream zza(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
