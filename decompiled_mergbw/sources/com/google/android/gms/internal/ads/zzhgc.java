package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzhgc implements zzhbw {
    private final ThreadLocal zza;
    private final String zzb;
    private final Key zzc;
    private final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzhgc(String str, Key key) throws GeneralSecurityException {
        char c2;
        int i;
        zzhgb zzhgbVar = new zzhgb(this);
        this.zza = zzhgbVar;
        if (zzgxd.zza(2)) {
            this.zzb = str;
            this.zzc = key;
            if (key.getEncoded().length < 16) {
                throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
            }
            switch (str.hashCode()) {
                case -1823053428:
                    if (str.equals("HMACSHA1")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 392315023:
                    if (str.equals("HMACSHA224")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 392315118:
                    if (str.equals("HMACSHA256")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 392316170:
                    if (str.equals("HMACSHA384")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 392317873:
                    if (str.equals("HMACSHA512")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                i = 20;
            } else if (c2 == 1) {
                i = 28;
            } else if (c2 == 2) {
                i = 32;
            } else if (c2 == 3) {
                i = 48;
            } else if (c2 != 4) {
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
            } else {
                i = 64;
            }
            this.zzd = i;
            zzhgbVar.get();
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzhbw
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        if (i > this.zzd) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        ThreadLocal threadLocal = this.zza;
        ((Mac) threadLocal.get()).update(bArr);
        return Arrays.copyOf(((Mac) threadLocal.get()).doFinal(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Key zzc() {
        return this.zzc;
    }
}
