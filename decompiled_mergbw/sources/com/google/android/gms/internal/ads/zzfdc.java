package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfdc {
    public final com.google.android.gms.ads.internal.client.zzga zza;
    public final zzblw zzb;
    public final zzeli zzc;
    public final com.google.android.gms.ads.internal.client.zzm zzd;
    public final Bundle zze;
    public final com.google.android.gms.ads.internal.client.zzr zzf;
    public final String zzg;
    public final ArrayList zzh;
    public final ArrayList zzi;
    public final zzbfl zzj;
    public final com.google.android.gms.ads.internal.client.zzx zzk;
    public final int zzl;
    public final AdManagerAdViewOptions zzm;
    public final PublisherAdViewOptions zzn;
    public final com.google.android.gms.ads.internal.client.zzco zzo;
    public final zzfcq zzp;
    public final boolean zzq;
    public final boolean zzr;
    public final boolean zzs;
    public final Bundle zzt;
    public final AtomicLong zzu;
    public final com.google.android.gms.ads.internal.client.zzcs zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfdc(zzfdb zzfdbVar, byte[] bArr) {
        com.google.android.gms.ads.internal.client.zzga zzgaVar;
        zzbfl zzbflVar;
        this.zzf = zzfdbVar.zzD();
        this.zzg = zzfdbVar.zzE();
        this.zzv = zzfdbVar.zzY();
        this.zze = zzfdbVar.zzC().zzB;
        com.google.android.gms.ads.internal.client.zzm zzC = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC2 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC3 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC4 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC5 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC6 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzC7 = zzfdbVar.zzC();
        com.google.android.gms.ads.internal.client.zzm zzmVar = new com.google.android.gms.ads.internal.client.zzm(zzfdbVar.zzC().zza, zzC7.zzb, zzC6.zzc, zzC5.zzd, zzC4.zze, zzC3.zzf, zzC2.zzg, zzC.zzh || zzfdbVar.zzG(), zzfdbVar.zzC().zzi, zzfdbVar.zzC().zzj, zzfdbVar.zzC().zzk, zzfdbVar.zzC().zzl, zzfdbVar.zzC().zzm, zzfdbVar.zzC().zzn, zzfdbVar.zzC().zzo, zzfdbVar.zzC().zzp, zzfdbVar.zzC().zzq, zzfdbVar.zzC().zzr, zzfdbVar.zzC().zzs, zzfdbVar.zzC().zzt, zzfdbVar.zzC().zzu, zzfdbVar.zzC().zzv, com.google.android.gms.ads.internal.util.zzs.zza(zzfdbVar.zzC().zzw), zzfdbVar.zzC().zzx, zzfdbVar.zzC().zzy, zzfdbVar.zzC().zzz, zzfdbVar.zzC().zzA);
        this.zzd = zzmVar;
        if (zzfdbVar.zzF() != null) {
            zzgaVar = zzfdbVar.zzF();
        } else {
            zzgaVar = zzfdbVar.zzJ() != null ? zzfdbVar.zzJ().zzf : null;
        }
        this.zza = zzgaVar;
        this.zzh = zzfdbVar.zzH();
        this.zzi = zzfdbVar.zzI();
        if (zzfdbVar.zzH() == null) {
            zzbflVar = null;
        } else {
            zzbflVar = zzfdbVar.zzJ() == null ? new zzbfl(new NativeAdOptions.Builder().build()) : zzfdbVar.zzJ();
        }
        this.zzj = zzbflVar;
        this.zzk = zzfdbVar.zzK();
        this.zzl = zzfdbVar.zzO();
        this.zzm = zzfdbVar.zzL();
        this.zzn = zzfdbVar.zzM();
        this.zzo = zzfdbVar.zzN();
        this.zzb = zzfdbVar.zzP();
        this.zzp = new zzfcq(zzfdbVar.zzQ(), null);
        this.zzq = zzfdbVar.zzR();
        this.zzr = zzfdbVar.zzS();
        this.zzc = zzfdbVar.zzT();
        this.zzs = zzfdbVar.zzU();
        this.zzt = zzfdbVar.zzV();
        if (zzmVar.zzA != 0) {
            this.zzu = new AtomicLong(zzmVar.zzA);
        } else {
            this.zzu = zzfdbVar.zzW();
        }
    }

    public final boolean zza() {
        zzbbz zzbbzVar = zzbci.zzdE;
        return this.zzg.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbbzVar));
    }
}
