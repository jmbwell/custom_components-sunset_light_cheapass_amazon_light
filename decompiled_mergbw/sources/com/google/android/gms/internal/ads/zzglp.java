package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzglp extends zzgkc {
    static final zzgkc zza = new zzglp(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzglp(Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public static zzglp zzj(int i, Object[] objArr, zzgkb zzgkbVar) {
        short[] sArr;
        char c2;
        char c3;
        byte[] bArr;
        Object[] objArr2;
        int i2 = i;
        Object[] objArr3 = objArr;
        if (i2 == 0) {
            return (zzglp) zza;
        }
        Object obj = null;
        int i3 = 1;
        if (i2 == 1) {
            zzgiz.zza(Objects.requireNonNull(objArr3[0]), Objects.requireNonNull(objArr3[1]));
            return new zzglp(null, objArr3, 1);
        }
        zzghc.zzn(i2, objArr3.length >> 1, FirebaseAnalytics.Param.INDEX);
        int zzn = zzgke.zzn(i);
        if (i2 == 1) {
            zzgiz.zza(Objects.requireNonNull(objArr3[0]), Objects.requireNonNull(objArr3[1]));
            i2 = 1;
            c2 = 1;
            c3 = 2;
        } else {
            int i4 = zzn - 1;
            char c4 = 65535;
            if (zzn <= 128) {
                byte[] bArr2 = new byte[zzn];
                Arrays.fill(bArr2, (byte) -1);
                int i5 = 0;
                int i6 = 0;
                while (i5 < i2) {
                    int i7 = i6 + i6;
                    int i8 = i5 + i5;
                    Object requireNonNull = Objects.requireNonNull(objArr3[i8]);
                    Object requireNonNull2 = Objects.requireNonNull(objArr3[i8 ^ i3]);
                    zzgiz.zza(requireNonNull, requireNonNull2);
                    int zza2 = zzgjs.zza(requireNonNull.hashCode());
                    while (true) {
                        int i9 = zza2 & i4;
                        int i10 = bArr2[i9] & 255;
                        if (i10 != 255) {
                            if (requireNonNull.equals(objArr3[i10])) {
                                int i11 = i10 ^ 1;
                                zzgka zzgkaVar = new zzgka(requireNonNull, requireNonNull2, Objects.requireNonNull(objArr3[i11]));
                                objArr3[i11] = requireNonNull2;
                                obj = zzgkaVar;
                                break;
                            }
                            zza2 = i9 + 1;
                        } else {
                            bArr2[i9] = (byte) i7;
                            if (i6 < i5) {
                                objArr3[i7] = requireNonNull;
                                objArr3[i7 ^ 1] = requireNonNull2;
                            }
                            i6++;
                        }
                    }
                    i5++;
                    i3 = 1;
                }
                if (i6 == i2) {
                    bArr = bArr2;
                } else {
                    obj = new Object[]{bArr2, Integer.valueOf(i6), obj};
                    c3 = 2;
                    c2 = 1;
                }
            } else {
                if (zzn <= 32768) {
                    sArr = new short[zzn];
                    Arrays.fill(sArr, (short) -1);
                    int i12 = 0;
                    for (int i13 = 0; i13 < i2; i13++) {
                        int i14 = i12 + i12;
                        int i15 = i13 + i13;
                        Object requireNonNull3 = Objects.requireNonNull(objArr3[i15]);
                        Object requireNonNull4 = Objects.requireNonNull(objArr3[i15 ^ 1]);
                        zzgiz.zza(requireNonNull3, requireNonNull4);
                        int zza3 = zzgjs.zza(requireNonNull3.hashCode());
                        while (true) {
                            int i16 = zza3 & i4;
                            char c5 = (char) sArr[i16];
                            if (c5 != 65535) {
                                if (requireNonNull3.equals(objArr3[c5])) {
                                    int i17 = c5 ^ 1;
                                    zzgka zzgkaVar2 = new zzgka(requireNonNull3, requireNonNull4, Objects.requireNonNull(objArr3[i17]));
                                    objArr3[i17] = requireNonNull4;
                                    obj = zzgkaVar2;
                                    break;
                                }
                                zza3 = i16 + 1;
                            } else {
                                sArr[i16] = (short) i14;
                                if (i12 < i13) {
                                    objArr3[i14] = requireNonNull3;
                                    objArr3[i14 ^ 1] = requireNonNull4;
                                }
                                i12++;
                            }
                        }
                    }
                    if (i12 != i2) {
                        Integer valueOf = Integer.valueOf(i12);
                        c2 = 1;
                        c3 = 2;
                        objArr2 = new Object[]{sArr, valueOf, obj};
                        obj = objArr2;
                    }
                    bArr = sArr;
                } else {
                    int i18 = 1;
                    sArr = new int[zzn];
                    Arrays.fill((int[]) sArr, -1);
                    int i19 = 0;
                    int i20 = 0;
                    while (i19 < i2) {
                        int i21 = i20 + i20;
                        int i22 = i19 + i19;
                        Object requireNonNull5 = Objects.requireNonNull(objArr3[i22]);
                        Object requireNonNull6 = Objects.requireNonNull(objArr3[i22 ^ i18]);
                        zzgiz.zza(requireNonNull5, requireNonNull6);
                        int zza4 = zzgjs.zza(requireNonNull5.hashCode());
                        while (true) {
                            int i23 = zza4 & i4;
                            ?? r15 = sArr[i23];
                            if (r15 != c4) {
                                if (requireNonNull5.equals(objArr3[r15])) {
                                    int i24 = r15 ^ 1;
                                    zzgka zzgkaVar3 = new zzgka(requireNonNull5, requireNonNull6, Objects.requireNonNull(objArr3[i24]));
                                    objArr3[i24] = requireNonNull6;
                                    obj = zzgkaVar3;
                                    break;
                                }
                                zza4 = i23 + 1;
                                c4 = 65535;
                            } else {
                                sArr[i23] = i21;
                                if (i20 < i19) {
                                    objArr3[i21] = requireNonNull5;
                                    objArr3[i21 ^ 1] = requireNonNull6;
                                }
                                i20++;
                            }
                        }
                        i19++;
                        i18 = 1;
                        c4 = 65535;
                    }
                    if (i20 != i2) {
                        c2 = 1;
                        c3 = 2;
                        objArr2 = new Object[]{sArr, Integer.valueOf(i20), obj};
                        obj = objArr2;
                    }
                    bArr = sArr;
                }
                c2 = 1;
            }
            c3 = 2;
            obj = bArr;
            c2 = 1;
        }
        if (obj instanceof Object[]) {
            Object[] objArr4 = (Object[]) obj;
            zzgka zzgkaVar4 = (zzgka) objArr4[c3];
            if (zzgkbVar != null) {
                zzgkbVar.zzc = zzgkaVar4;
                Object obj2 = objArr4[0];
                int intValue = ((Integer) objArr4[c2]).intValue();
                objArr3 = Arrays.copyOf(objArr3, intValue + intValue);
                obj = obj2;
                i2 = intValue;
            } else {
                throw zzgkaVar4.zza();
            }
        }
        return new zzglp(obj, objArr3, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1 A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzgkc, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L6
        L3:
            r10 = r0
            goto L9e
        L6:
            int r1 = r9.zzd
            java.lang.Object[] r2 = r9.zzb
            r3 = 1
            if (r1 != r3) goto L22
            r1 = 0
            r1 = r2[r1]
            java.lang.Object r1 = java.util.Objects.requireNonNull(r1)
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L3
            r10 = r2[r3]
            java.lang.Object r10 = java.util.Objects.requireNonNull(r10)
            goto L9e
        L22:
            java.lang.Object r1 = r9.zzc
            if (r1 != 0) goto L27
            goto L3
        L27:
            boolean r4 = r1 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L53
            r4 = r1
            byte[] r4 = (byte[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.ads.zzgjs.zza(r1)
        L3a:
            r1 = r1 & r6
            r5 = r4[r1]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L43
            goto L3
        L43:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L50
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9e
        L50:
            int r1 = r1 + 1
            goto L3a
        L53:
            boolean r4 = r1 instanceof short[]
            if (r4 == 0) goto L7f
            r4 = r1
            short[] r4 = (short[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.ads.zzgjs.zza(r1)
        L65:
            r1 = r1 & r6
            short r5 = r4[r1]
            char r5 = (char) r5
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r5 != r7) goto L6f
            goto L3
        L6f:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7c
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9e
        L7c:
            int r1 = r1 + 1
            goto L65
        L7f:
            int[] r1 = (int[]) r1
            int r4 = r1.length
            int r4 = r4 + r5
            int r6 = r10.hashCode()
            int r6 = com.google.android.gms.internal.ads.zzgjs.zza(r6)
        L8b:
            r6 = r6 & r4
            r7 = r1[r6]
            if (r7 != r5) goto L92
            goto L3
        L92:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La2
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9e:
            if (r10 != 0) goto La1
            return r0
        La1:
            return r10
        La2:
            int r6 = r6 + 1
            goto L8b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzglp.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgkc
    final zzgke zze() {
        return new zzglm(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzgkc
    final zzgke zzg() {
        return new zzgln(this, new zzglo(this.zzb, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzgkc
    final zzgjv zzi() {
        return new zzglo(this.zzb, 1, this.zzd);
    }
}
