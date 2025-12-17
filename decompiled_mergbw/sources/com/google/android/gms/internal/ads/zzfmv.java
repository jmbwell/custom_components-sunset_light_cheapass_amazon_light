package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfmv implements zzfmt {
    private final zzfmt zza;

    public zzfmv(zzfmt zzfmtVar) {
        this.zza = zzfmtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmt
    public final JSONObject zza(View view) {
        JSONObject zzb = zzfnd.zzb(0, 0, 0, 0);
        int zzb2 = zzfng.zzb();
        int i = zzb2 - 1;
        if (zzb2 == 0) {
            throw null;
        }
        try {
            zzb.put("noOutputDevice", i == 0);
        } catch (JSONException e) {
            zzfne.zza("Error with setting output device status", e);
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfmt
    public final void zzb(View view, JSONObject jSONObject, zzfms zzfmsVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        zzfmh zza = zzfmh.zza();
        if (zza != null) {
            Collection<zzfln> zzf = zza.zzf();
            int size = zzf.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (zzfln zzflnVar : zzf) {
                View zzi = zzflnVar.zzi();
                if (zzi != null && zzi.isAttachedToWindow() && zzi.isShown()) {
                    View view2 = zzi;
                    while (true) {
                        if (view2 != null) {
                            if (view2.getAlpha() != 0.0f) {
                                ViewParent parent = view2.getParent();
                                view2 = parent instanceof View ? (View) parent : null;
                            }
                        } else {
                            View rootView = zzi.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float z3 = rootView.getZ();
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (((View) arrayList.get(i)).getZ() <= z3) {
                                        break;
                                    }
                                    size2 = i;
                                }
                                arrayList.add(size2, rootView);
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzfmsVar.zza((View) arrayList.get(i2), this.zza, jSONObject, z2);
        }
    }
}
