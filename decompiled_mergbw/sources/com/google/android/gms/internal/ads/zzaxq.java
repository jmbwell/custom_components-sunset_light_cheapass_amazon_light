package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public enum zzaxq implements zzhil {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6),
    RISCV64(7),
    UNKNOWN(999);
    
    private final int zzh;

    zzaxq(int i) {
        this.zzh = i;
    }

    public static zzaxq zzb(int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 999) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 6) {
                                if (i != 7) {
                                    return null;
                                }
                                return RISCV64;
                            }
                            return X86_64;
                        }
                        return ARM64;
                    }
                    return X86;
                }
                return UNKNOWN;
            }
            return ARM7;
        }
        return UNSUPPORTED;
    }

    public static zzhin zzc() {
        return zzaxp.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzhil
    public final int zza() {
        return this.zzh;
    }
}
