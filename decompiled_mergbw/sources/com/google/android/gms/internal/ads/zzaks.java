package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
final class zzaks {
    public final String zza;
    public final String zzb;
    public final boolean zzc;
    public final long zzd;
    public final long zze;
    public final zzaky zzf;
    public final String zzg;
    public final String zzh;
    public final zzaks zzi;
    private final String[] zzj;
    private final HashMap zzk;
    private final HashMap zzl;
    private List zzm;

    public static zzaks zza(String str) {
        return new zzaks(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public static zzaks zzb(String str, long j, long j2, zzaky zzakyVar, String[] strArr, String str2, String str3, zzaks zzaksVar) {
        return new zzaks(str, null, j, j2, zzakyVar, strArr, str2, str3, zzaksVar);
    }

    private final void zzi(TreeSet treeSet, boolean z) {
        String str = this.zza;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z || equals || (equals2 && this.zzh != null)) {
            long j = this.zzd;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.zze;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.zzm != null) {
            for (int i = 0; i < this.zzm.size(); i++) {
                zzaks zzaksVar = (zzaks) this.zzm.get(i);
                boolean z2 = true;
                if (!z && !equals) {
                    z2 = false;
                }
                zzaksVar.zzi(treeSet, z2);
            }
        }
    }

    private final void zzj(long j, String str, List list) {
        String str2;
        String str3 = this.zzg;
        if (true != "".equals(str3)) {
            str = str3;
        }
        if (!zzc(j) || !"div".equals(this.zza) || (str2 = this.zzh) == null) {
            for (int i = 0; i < zzf(); i++) {
                zze(i).zzj(j, str, list);
            }
            return;
        }
        list.add(new Pair(str, str2));
    }

    private final void zzk(long j, boolean z, String str, Map map) {
        HashMap hashMap = this.zzk;
        hashMap.clear();
        HashMap hashMap2 = this.zzl;
        hashMap2.clear();
        String str2 = this.zza;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.zzg;
        String str4 = true != "".equals(str3) ? str3 : str;
        if (!this.zzc || !z) {
            if (!"br".equals(str2) || !z) {
                if (zzc(j)) {
                    for (Map.Entry entry : map.entrySet()) {
                        CharSequence zzb = ((zzck) entry.getValue()).zzb();
                        zzb.getClass();
                        hashMap.put((String) entry.getKey(), Integer.valueOf(zzb.length()));
                    }
                    boolean equals = "p".equals(str2);
                    for (int i = 0; i < zzf(); i++) {
                        zze(i).zzk(j, z || equals, str4, map);
                    }
                    if (equals) {
                        SpannableStringBuilder zzl = zzl(str4, map);
                        int length = zzl.length();
                        do {
                            length--;
                            if (length < 0) {
                                break;
                            }
                        } while (zzl.charAt(length) == ' ');
                        if (length >= 0 && zzl.charAt(length) != '\n') {
                            zzl.append('\n');
                        }
                    }
                    for (Map.Entry entry2 : map.entrySet()) {
                        CharSequence zzb2 = ((zzck) entry2.getValue()).zzb();
                        zzb2.getClass();
                        hashMap2.put((String) entry2.getKey(), Integer.valueOf(zzb2.length()));
                    }
                    return;
                }
                return;
            }
            zzl(str4, map).append('\n');
            return;
        }
        SpannableStringBuilder zzl2 = zzl(str4, map);
        String str5 = this.zzb;
        str5.getClass();
        zzl2.append((CharSequence) str5);
    }

    private static SpannableStringBuilder zzl(String str, Map map) {
        if (!map.containsKey(str)) {
            zzck zzckVar = new zzck();
            zzckVar.zza(new SpannableStringBuilder());
            map.put(str, zzckVar);
        }
        CharSequence zzb = ((zzck) map.get(str)).zzb();
        zzb.getClass();
        return (SpannableStringBuilder) zzb;
    }

    private final void zzm(long j, Map map, Map map2, String str, Map map3) {
        Iterator it;
        zzaks zzaksVar;
        zzaky zza;
        boolean z;
        int i;
        if (zzc(j)) {
            String str2 = this.zzg;
            String str3 = true != "".equals(str2) ? str2 : str;
            Iterator it2 = this.zzl.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap hashMap = this.zzk;
                int intValue = hashMap.containsKey(str4) ? ((Integer) hashMap.get(str4)).intValue() : 0;
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (intValue != intValue2) {
                    zzck zzckVar = (zzck) map3.get(str4);
                    zzckVar.getClass();
                    zzakw zzakwVar = (zzakw) map2.get(str3);
                    zzakwVar.getClass();
                    int i2 = zzakwVar.zzj;
                    zzaky zza2 = zzakx.zza(this.zzf, this.zzj, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzckVar.zzb();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        zzckVar.zza(spannableStringBuilder);
                    }
                    if (zza2 != null) {
                        zzaks zzaksVar2 = this.zzi;
                        if (zza2.zza() != -1) {
                            spannableStringBuilder.setSpan(new StyleSpan(zza2.zza()), intValue, intValue2, 33);
                        }
                        if (zza2.zzb()) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzd()) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (zza2.zzl()) {
                            zzcr.zza(spannableStringBuilder, new ForegroundColorSpan(zza2.zzj()), intValue, intValue2, 33);
                        }
                        if (zza2.zzo()) {
                            zzcr.zza(spannableStringBuilder, new BackgroundColorSpan(zza2.zzm()), intValue, intValue2, 33);
                        }
                        if (zza2.zzh() != null) {
                            zzcr.zza(spannableStringBuilder, new TypefaceSpan(zza2.zzh()), intValue, intValue2, 33);
                        }
                        if (zza2.zzE() != null) {
                            zzakr zzE = zza2.zzE();
                            zzE.getClass();
                            int i3 = zzE.zza;
                            it = it2;
                            if (i3 == -1) {
                                i3 = (i2 == 2 || i2 == 1) ? 3 : 1;
                                i = 1;
                            } else {
                                i = zzE.zzb;
                            }
                            int i4 = zzE.zzc;
                            if (i4 == -2) {
                                i4 = 1;
                            }
                            zzcr.zza(spannableStringBuilder, new zzcs(i3, i, i4), intValue, intValue2, 33);
                        } else {
                            it = it2;
                        }
                        int zzv = zza2.zzv();
                        if (zzv == 2) {
                            while (true) {
                                if (zzaksVar2 == null) {
                                    zzaksVar2 = null;
                                    break;
                                }
                                zzaky zza3 = zzakx.zza(zzaksVar2.zzf, zzaksVar2.zzj, map);
                                if (zza3 != null && zza3.zzv() == 1) {
                                    break;
                                }
                                zzaksVar2 = zzaksVar2.zzi;
                            }
                            if (zzaksVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(zzaksVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        zzaksVar = null;
                                        break;
                                    }
                                    zzaks zzaksVar3 = (zzaks) arrayDeque.pop();
                                    zzaky zza4 = zzakx.zza(zzaksVar3.zzf, zzaksVar3.zzj, map);
                                    if (zza4 != null && zza4.zzv() == 3) {
                                        zzaksVar = zzaksVar3;
                                        break;
                                    }
                                    for (int zzf = zzaksVar3.zzf() - 1; zzf >= 0; zzf--) {
                                        arrayDeque.push(zzaksVar3.zze(zzf));
                                    }
                                }
                                if (zzaksVar != null) {
                                    if (zzaksVar.zzf() != 1 || zzaksVar.zze(0).zzb == null) {
                                        zzds.zzb("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = zzaksVar.zze(0).zzb;
                                        String str6 = zzeo.zza;
                                        zzaky zza5 = zzakx.zza(zzaksVar.zzf, zzaksVar.zzj, map);
                                        int zzx = zza5 != null ? zza5.zzx() : -1;
                                        if (zzx == -1 && (zza = zzakx.zza(zzaksVar2.zzf, zzaksVar2.zzj, map)) != null) {
                                            zzx = zza.zzx();
                                        }
                                        spannableStringBuilder.setSpan(new zzcq(str5, zzx), intValue, intValue2, 33);
                                    }
                                }
                            }
                        } else if (zzv == 3 || zzv == 4) {
                            spannableStringBuilder.setSpan(new zzakq(), intValue, intValue2, 33);
                        }
                        if (zza2.zzC()) {
                            zzcr.zza(spannableStringBuilder, new zzcp(), intValue, intValue2, 33);
                        }
                        int zzI = zza2.zzI();
                        if (zzI != 1) {
                            if (zzI == 2) {
                                zzcr.zza(spannableStringBuilder, new RelativeSizeSpan(zza2.zzJ()), intValue, intValue2, 33);
                            } else if (zzI == 3) {
                                zzcr.zzb(spannableStringBuilder, zza2.zzJ() / 100.0f, intValue, intValue2, 33);
                            }
                            z = true;
                        } else {
                            z = true;
                            zzcr.zza(spannableStringBuilder, new AbsoluteSizeSpan((int) zza2.zzJ(), true), intValue, intValue2, 33);
                        }
                        if ("p".equals(this.zza)) {
                            if (zza2.zzq() != Float.MAX_VALUE) {
                                zzckVar.zzp((zza2.zzq() * (-90.0f)) / 100.0f);
                            }
                            if (zza2.zzy() != null) {
                                zzckVar.zzd(zza2.zzy());
                            }
                            if (zza2.zzA() != null) {
                                zzckVar.zze(zza2.zzA());
                            }
                        }
                        it2 = it;
                    }
                }
            }
            for (int i5 = 0; i5 < zzf(); i5++) {
                zze(i5).zzm(j, map, map2, str3, map3);
            }
        }
    }

    public final boolean zzc(long j) {
        long j2 = this.zzd;
        if (j2 == -9223372036854775807L) {
            if (this.zze == -9223372036854775807L) {
                return true;
            }
            j2 = -9223372036854775807L;
        }
        int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
        if (i > 0 || this.zze != -9223372036854775807L) {
            if (j2 != -9223372036854775807L || j >= this.zze) {
                return i <= 0 && j < this.zze;
            }
            return true;
        }
        return true;
    }

    public final void zzd(zzaks zzaksVar) {
        if (this.zzm == null) {
            this.zzm = new ArrayList();
        }
        this.zzm.add(zzaksVar);
    }

    public final zzaks zze(int i) {
        List list = this.zzm;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        return (zzaks) list.get(i);
    }

    public final int zzf() {
        List list = this.zzm;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final long[] zzg() {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        zzi(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = ((Long) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public final List zzh(long j, Map map, Map map2, Map map3) {
        zzakq[] zzakqVarArr;
        List arrayList = new ArrayList();
        String str = this.zzg;
        zzj(j, str, arrayList);
        TreeMap treeMap = new TreeMap();
        zzk(j, false, str, treeMap);
        zzm(j, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) arrayList.get(i);
            String str2 = (String) map3.get(pair.second);
            if (str2 != null) {
                byte[] decode = Base64.decode(str2, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzakw zzakwVar = (zzakw) map2.get(pair.first);
                zzakwVar.getClass();
                zzck zzckVar = new zzck();
                zzckVar.zzc(decodeByteArray);
                zzckVar.zzi(zzakwVar.zzb);
                zzckVar.zzj(0);
                zzckVar.zzf(zzakwVar.zzc, 0);
                zzckVar.zzg(zzakwVar.zze);
                zzckVar.zzm(zzakwVar.zzf);
                zzckVar.zzn(zzakwVar.zzg);
                zzckVar.zzo(zzakwVar.zzj);
                arrayList2.add(zzckVar.zzr());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzakw zzakwVar2 = (zzakw) map2.get(entry.getKey());
            zzakwVar2.getClass();
            zzck zzckVar2 = (zzck) entry.getValue();
            CharSequence zzb = zzckVar2.zzb();
            zzb.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzb;
            for (zzakq zzakqVar : (zzakq[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzakq.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzakqVar), spannableStringBuilder.getSpanEnd(zzakqVar), (CharSequence) "");
            }
            int i2 = 0;
            while (i2 < spannableStringBuilder.length()) {
                int i3 = i2 + 1;
                if (spannableStringBuilder.charAt(i2) == ' ') {
                    int i4 = i3;
                    while (i4 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i4) == ' ') {
                        i4++;
                    }
                    int i5 = i4 - i3;
                    if (i5 > 0) {
                        spannableStringBuilder.delete(i2, i5 + i2);
                    }
                }
                i2 = i3;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i6 = 0;
            while (i6 < spannableStringBuilder.length() - 1) {
                int i7 = i6 + 1;
                if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i7) == ' ') {
                    spannableStringBuilder.delete(i7, i6 + 2);
                }
                i6 = i7;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i8 = 0;
            while (i8 < spannableStringBuilder.length() - 1) {
                int i9 = i8 + 1;
                if (spannableStringBuilder.charAt(i8) == ' ' && spannableStringBuilder.charAt(i9) == '\n') {
                    spannableStringBuilder.delete(i8, i9);
                }
                i8 = i9;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzckVar2.zzf(zzakwVar2.zzc, zzakwVar2.zzd);
            zzckVar2.zzg(zzakwVar2.zze);
            zzckVar2.zzi(zzakwVar2.zzb);
            zzckVar2.zzm(zzakwVar2.zzf);
            zzckVar2.zzl(zzakwVar2.zzi, zzakwVar2.zzh);
            zzckVar2.zzo(zzakwVar2.zzj);
            arrayList2.add(zzckVar2.zzr());
        }
        return arrayList2;
    }

    private zzaks(String str, String str2, long j, long j2, zzaky zzakyVar, String[] strArr, String str3, String str4, zzaks zzaksVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzh = str4;
        this.zzf = zzakyVar;
        this.zzj = strArr;
        this.zzc = str2 != null;
        this.zzd = j;
        this.zze = j2;
        str3.getClass();
        this.zzg = str3;
        this.zzi = zzaksVar;
        this.zzk = new HashMap();
        this.zzl = new HashMap();
    }
}
