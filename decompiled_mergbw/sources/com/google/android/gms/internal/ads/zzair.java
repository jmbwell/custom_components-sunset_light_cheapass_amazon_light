package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzair {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static zzadz zza(zzacv zzacvVar) throws IOException {
        return zzc(zzacvVar, true, false);
    }

    public static zzadz zzb(zzacv zzacvVar, boolean z) throws IOException {
        return zzc(zzacvVar, false, z);
    }

    private static zzadz zzc(zzacv zzacvVar, boolean z, boolean z2) throws IOException {
        zzef zzefVar;
        int i;
        long j;
        zzef zzefVar2;
        int i2;
        int i3;
        int[] iArr;
        long zzo = zzacvVar.zzo();
        long j2 = -1;
        int i4 = (zzo > (-1L) ? 1 : (zzo == (-1L) ? 0 : -1));
        long j3 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (i4 != 0 && zzo <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j3 = zzo;
        }
        zzef zzefVar3 = new zzef(64);
        int i5 = (int) j3;
        int i6 = 0;
        int i7 = 0;
        boolean z3 = false;
        while (i7 < i5) {
            zzefVar3.zza(8);
            boolean z4 = true;
            if (!zzacvVar.zzh(zzefVar3.zzi(), i6, 8, true)) {
                break;
            }
            long zzz = zzefVar3.zzz();
            int zzB = zzefVar3.zzB();
            if (zzz == 1) {
                zzacvVar.zzi(zzefVar3.zzi(), 8, 8);
                i = 16;
                zzefVar3.zzf(16);
                zzz = zzefVar3.zzD();
                zzefVar = zzefVar3;
            } else {
                if (zzz == 0) {
                    long zzo2 = zzacvVar.zzo();
                    if (zzo2 != j2) {
                        zzz = (zzo2 - zzacvVar.zzm()) + 8;
                    }
                }
                zzefVar = zzefVar3;
                i = 8;
            }
            long j4 = zzz;
            long j5 = i;
            if (j4 < j5) {
                return new zzahm(zzB, j4, i);
            }
            i7 += i;
            if (zzB == 1836019574) {
                i5 += (int) j4;
                if (i4 != 0 && i5 > zzo) {
                    i5 = (int) zzo;
                }
                zzefVar3 = zzefVar;
                j2 = -1;
                i6 = 0;
            } else {
                if (zzB == 1953653099 || zzB == 1835297121 || zzB == 1835626086) {
                    j = zzo;
                    zzefVar2 = zzefVar;
                    i2 = 0;
                } else if (zzB == 1836019558 || zzB == 1836475768) {
                    i6 = 1;
                    break;
                } else {
                    z3 |= !(zzB != 1835295092);
                    if (zzB != 1937007212) {
                        i3 = zzB;
                    } else if (j4 > 1000000) {
                        i6 = 0;
                        break;
                    } else {
                        i3 = 1937007212;
                    }
                    j = zzo;
                    if ((i7 + j4) - j5 >= i5) {
                        i6 = 0;
                        break;
                    }
                    int i8 = (int) (j4 - j5);
                    i7 += i8;
                    if (i3 != 1718909296) {
                        zzefVar2 = zzefVar;
                        i2 = 0;
                        if (i8 != 0) {
                            zzacvVar.zzk(i8);
                        }
                    } else if (i8 < 8) {
                        return new zzahm(1718909296, i8, 8);
                    } else {
                        zzefVar2 = zzefVar;
                        zzefVar2.zza(i8);
                        i2 = 0;
                        zzacvVar.zzi(zzefVar2.zzi(), 0, i8);
                        int zzB2 = zzefVar2.zzB();
                        boolean zzd = zzd(zzB2, z2) | z3;
                        zzefVar2.zzk(4);
                        int zzd2 = zzefVar2.zzd() / 4;
                        if (!zzd && zzd2 > 0) {
                            iArr = new int[zzd2];
                            int i9 = 0;
                            while (true) {
                                if (i9 >= zzd2) {
                                    z4 = zzd;
                                    break;
                                }
                                int zzB3 = zzefVar2.zzB();
                                iArr[i9] = zzB3;
                                if (zzd(zzB3, z2)) {
                                    break;
                                }
                                i9++;
                            }
                        } else {
                            z4 = zzd;
                            iArr = null;
                        }
                        if (!z4) {
                            return new zzaiw(zzB2, iArr);
                        }
                        z3 = z4;
                    }
                }
                zzefVar3 = zzefVar2;
                i6 = i2;
                zzo = j;
                j2 = -1;
            }
        }
        if (z3) {
            if (z != i6) {
                return i6 != 0 ? zzaig.zza : zzaig.zzb;
            }
            return null;
        }
        return zzain.zza;
    }

    private static boolean zzd(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        int[] iArr = zza;
        for (int i2 = 0; i2 < 29; i2++) {
            if (iArr[i2] == i) {
                return true;
            }
        }
        return false;
    }
}
