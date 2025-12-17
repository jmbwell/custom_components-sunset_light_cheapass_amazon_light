package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
abstract class zzgho extends zzggi {
    final CharSequence zzb;
    int zzc = 0;
    int zzd = Integer.MAX_VALUE;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgho(zzghq zzghqVar, CharSequence charSequence) {
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzggi
    protected final /* bridge */ /* synthetic */ Object zza() {
        int zzd;
        int i = this.zzc;
        while (true) {
            int i2 = this.zzc;
            if (i2 == -1) {
                zzb();
                return null;
            }
            int zzc = zzc(i2);
            if (zzc == -1) {
                zzc = this.zzb.length();
                this.zzc = -1;
                zzd = -1;
            } else {
                zzd = zzd(zzc);
                this.zzc = zzd;
            }
            if (zzd == i) {
                int i3 = zzd + 1;
                this.zzc = i3;
                if (i3 > this.zzb.length()) {
                    this.zzc = -1;
                }
            } else {
                if (i < zzc) {
                    this.zzb.charAt(i);
                }
                if (i < zzc) {
                    this.zzb.charAt(zzc - 1);
                }
                int i4 = this.zzd;
                if (i4 == 1) {
                    CharSequence charSequence = this.zzb;
                    int length = charSequence.length();
                    this.zzc = -1;
                    if (length > i) {
                        charSequence.charAt(length - 1);
                    }
                    zzc = length;
                } else {
                    this.zzd = i4 - 1;
                }
                return this.zzb.subSequence(i, zzc).toString();
            }
        }
    }

    abstract int zzc(int i);

    abstract int zzd(int i);
}
