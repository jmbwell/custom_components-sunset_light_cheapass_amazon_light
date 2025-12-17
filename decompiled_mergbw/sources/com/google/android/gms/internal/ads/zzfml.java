package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfml {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z0-9 ]+$");
    private final List zzb = new ArrayList();

    public final List zza() {
        return this.zzb;
    }

    public final void zzb(View view, zzflq zzflqVar, String str) {
        zzfmk zzfmkVar;
        if (view != null) {
            if (zza.matcher("Ad overlay").matches()) {
                List list = this.zzb;
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zzfmkVar = null;
                        break;
                    }
                    zzfmkVar = (zzfmk) it.next();
                    if (zzfmkVar.zza().get() == view) {
                        break;
                    }
                }
                if (zzfmkVar == null) {
                    list.add(new zzfmk(view, zzflqVar, "Ad overlay"));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    public final void zzc() {
        this.zzb.clear();
    }
}
