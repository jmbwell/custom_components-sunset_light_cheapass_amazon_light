package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzbrv extends zzbsb {
    private String zza;
    private boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final Object zzi;
    private final zzcek zzj;
    private final Activity zzk;
    private zzcgt zzl;
    private ImageView zzm;
    private LinearLayout zzn;
    private final zzbsc zzo;
    private PopupWindow zzp;
    private RelativeLayout zzq;
    private ViewGroup zzr;

    static {
        CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    }

    public zzbrv(zzcek zzcekVar, zzbsc zzbscVar) {
        super(zzcekVar, "resize");
        this.zza = "top-right";
        this.zzb = true;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = -1;
        this.zzi = new Object();
        this.zzj = zzcekVar;
        this.zzk = zzcekVar.zzj();
        this.zzo = zzbscVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm */
    public final void zzf(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlF)).booleanValue()) {
            this.zzq.removeView((View) this.zzj);
            this.zzp.dismiss();
        } else {
            this.zzp.dismiss();
            this.zzq.removeView((View) this.zzj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlG)).booleanValue()) {
            View view = (View) this.zzj;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.zzr;
        if (viewGroup != null) {
            viewGroup.removeView(this.zzm);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlH)).booleanValue()) {
                try {
                    ViewGroup viewGroup2 = this.zzr;
                    zzcek zzcekVar = this.zzj;
                    viewGroup2.addView((View) zzcekVar);
                    zzcekVar.zzaf(this.zzl);
                } catch (IllegalStateException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to add webview back to view hierarchy.", e);
                }
            } else {
                ViewGroup viewGroup3 = this.zzr;
                zzcek zzcekVar2 = this.zzj;
                viewGroup3.addView((View) zzcekVar2);
                zzcekVar2.zzaf(this.zzl);
            }
        }
        if (z) {
            zzk("default");
            zzbsc zzbscVar = this.zzo;
            if (zzbscVar != null) {
                zzbscVar.zzb();
            }
        }
        this.zzp = null;
        this.zzq = null;
        this.zzr = null;
        this.zzn = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x025c, code lost:
        zzg("Resize location out of screen or close button is not visible.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0262, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0280 A[Catch: all -> 0x0468, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:9:0x0014, B:11:0x001c, B:12:0x0021, B:14:0x0023, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003a, B:22:0x003f, B:24:0x0041, B:26:0x004f, B:27:0x0060, B:29:0x006e, B:30:0x007f, B:32:0x008d, B:33:0x009e, B:35:0x00ac, B:36:0x00bd, B:38:0x00cb, B:39:0x00d9, B:41:0x00e7, B:42:0x00e9, B:44:0x00ed, B:46:0x00f1, B:48:0x00f7, B:51:0x00ff, B:55:0x0122, B:61:0x012e, B:131:0x025c, B:132:0x0261, B:134:0x0263, B:136:0x0280, B:138:0x028c, B:140:0x02c4, B:171:0x0376, B:178:0x03a5, B:179:0x03bd, B:180:0x03d9, B:182:0x03e1, B:183:0x03e8, B:184:0x040e, B:187:0x0411, B:189:0x043f, B:190:0x0451, B:172:0x037d, B:173:0x0384, B:174:0x038b, B:175:0x0392, B:176:0x0398, B:177:0x039f, B:139:0x02c1, B:192:0x0453, B:193:0x0458, B:62:0x0137, B:64:0x013b, B:93:0x018f, B:101:0x01df, B:103:0x01ea, B:105:0x01ed, B:107:0x01f2, B:109:0x01f7, B:112:0x01fd, B:94:0x019a, B:96:0x01b0, B:98:0x01bb, B:95:0x01a5, B:97:0x01b3, B:99:0x01c0, B:100:0x01d4, B:102:0x01e2, B:113:0x020c, B:121:0x0236, B:127:0x0246, B:124:0x023c, B:126:0x0244, B:117:0x022c, B:119:0x0232, B:128:0x024b, B:129:0x0253, B:195:0x045a, B:196:0x045f, B:198:0x0461, B:199:0x0466), top: B:204:0x0009, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0453 A[Catch: all -> 0x0468, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:7:0x0012, B:9:0x0014, B:11:0x001c, B:12:0x0021, B:14:0x0023, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003a, B:22:0x003f, B:24:0x0041, B:26:0x004f, B:27:0x0060, B:29:0x006e, B:30:0x007f, B:32:0x008d, B:33:0x009e, B:35:0x00ac, B:36:0x00bd, B:38:0x00cb, B:39:0x00d9, B:41:0x00e7, B:42:0x00e9, B:44:0x00ed, B:46:0x00f1, B:48:0x00f7, B:51:0x00ff, B:55:0x0122, B:61:0x012e, B:131:0x025c, B:132:0x0261, B:134:0x0263, B:136:0x0280, B:138:0x028c, B:140:0x02c4, B:171:0x0376, B:178:0x03a5, B:179:0x03bd, B:180:0x03d9, B:182:0x03e1, B:183:0x03e8, B:184:0x040e, B:187:0x0411, B:189:0x043f, B:190:0x0451, B:172:0x037d, B:173:0x0384, B:174:0x038b, B:175:0x0392, B:176:0x0398, B:177:0x039f, B:139:0x02c1, B:192:0x0453, B:193:0x0458, B:62:0x0137, B:64:0x013b, B:93:0x018f, B:101:0x01df, B:103:0x01ea, B:105:0x01ed, B:107:0x01f2, B:109:0x01f7, B:112:0x01fd, B:94:0x019a, B:96:0x01b0, B:98:0x01bb, B:95:0x01a5, B:97:0x01b3, B:99:0x01c0, B:100:0x01d4, B:102:0x01e2, B:113:0x020c, B:121:0x0236, B:127:0x0246, B:124:0x023c, B:126:0x0244, B:117:0x022c, B:119:0x0232, B:128:0x024b, B:129:0x0253, B:195:0x045a, B:196:0x045f, B:198:0x0461, B:199:0x0466), top: B:204:0x0009, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbrv.zza(java.util.Map):void");
    }

    public final void zzb(final boolean z) {
        synchronized (this.zzi) {
            if (this.zzp != null) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbci.zzlE)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                    zzf(z);
                } else {
                    zzbzh.zzf.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbru
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzbrv.this.zzf(z);
                        }
                    });
                }
            }
        }
    }

    public final void zzc(int i, int i2, boolean z) {
        synchronized (this.zzi) {
            this.zzc = i;
            this.zzd = i2;
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zzi) {
            z = this.zzp != null;
        }
        return z;
    }

    public final void zze(int i, int i2) {
        this.zzc = i;
        this.zzd = i2;
    }
}
