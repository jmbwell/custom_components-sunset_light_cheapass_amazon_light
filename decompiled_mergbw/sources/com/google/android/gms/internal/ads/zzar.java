package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import com.alibaba.fastjson.asm.Opcodes;
import com.clj.fastble.data.BleMsg;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzar {
    public static final /* synthetic */ int zza = 0;
    private static final ArrayList zzb = new ArrayList();
    private static final Pattern zzc = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static boolean zza(String str) {
        return "audio".equals(zzk(str));
    }

    public static boolean zzb(String str) {
        return "video".equals(zzk(str));
    }

    public static boolean zzc(String str) {
        return "image".equals(zzk(str)) || "application/x-image-uri".equals(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean zzd(String str, String str2) {
        char c2;
        zzaq zzj;
        int zza2;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
                return true;
            case '\n':
                return (str2 == null || (zzj = zzj(str2)) == null || (zza2 = zzj.zza()) == 0 || zza2 == 16) ? false : true;
            default:
                return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0202 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zze(java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzar.zze(java.lang.String, java.lang.String):boolean");
    }

    public static String zzf(int i) {
        if (i != 32) {
            if (i != 33) {
                if (i != 35) {
                    if (i != 64) {
                        if (i != 163) {
                            if (i != 177) {
                                if (i != 221) {
                                    if (i != 165) {
                                        if (i != 166) {
                                            switch (i) {
                                                case Opcodes.IADD /* 96 */:
                                                case BleMsg.MSG_SET_MTU_START /* 97 */:
                                                case BleMsg.MSG_SET_MTU_RESULT /* 98 */:
                                                case 99:
                                                case 100:
                                                case 101:
                                                    return "video/mpeg2";
                                                case 102:
                                                case 103:
                                                case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                                                    return "audio/mp4a-latm";
                                                case 105:
                                                case 107:
                                                    return "audio/mpeg";
                                                case 106:
                                                    return "video/mpeg";
                                                case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR /* 108 */:
                                                    return "image/jpeg";
                                                default:
                                                    switch (i) {
                                                        case Opcodes.RET /* 169 */:
                                                        case 172:
                                                            return "audio/vnd.dts";
                                                        case 170:
                                                        case 171:
                                                            return "audio/vnd.dts.hd";
                                                        case 173:
                                                            return "audio/opus";
                                                        case 174:
                                                            return "audio/ac4";
                                                        default:
                                                            return null;
                                                    }
                                            }
                                        }
                                        return "audio/eac3";
                                    }
                                    return "audio/ac3";
                                }
                                return "audio/vorbis";
                            }
                            return "video/x-vnd.on2.vp9";
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return "video/mp4v-es";
    }

    public static int zzg(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zza(str)) {
            return 1;
        }
        if (zzb(str)) {
            return 2;
        }
        if ("text".equals(zzk(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if (zzc(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = zzb;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zzap zzapVar = (zzap) arrayList.get(i);
            String str2 = zzapVar.zza;
            if (str.equals(null)) {
                int i2 = zzapVar.zzc;
                return 0;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zzh(String str, String str2) {
        char c2;
        zzaq zzj;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return 9;
            case 1:
                if (str2 == null || (zzj = zzj(str2)) == null) {
                    return 0;
                }
                return zzj.zza();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case '\b':
                return 8;
            case '\t':
                return 30;
            case '\n':
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zzi(String str) {
        char c2;
        if (str == null) {
            return null;
        }
        String zza2 = zzggj.zza(str);
        switch (zza2.hashCode()) {
            case -1833600100:
                if (zza2.equals("video/x-mvhevc")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1007807498:
                if (zza2.equals("audio/x-flac")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -979095690:
                if (zza2.equals("application/x-mpegurl")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -586683234:
                if (zza2.equals("audio/x-wav")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -432836268:
                if (zza2.equals("audio/mpeg-l1")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -432836267:
                if (zza2.equals("audio/mpeg-l2")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 187090231:
                if (zza2.equals("audio/mp3")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                return "video/mv-hevc";
            case 1:
                return "audio/flac";
            case 2:
                return "audio/mpeg";
            case 3:
                return "audio/wav";
            case 4:
                return "application/x-mpegURL";
            case 5:
                return "audio/mpeg-L1";
            case 6:
                return "audio/mpeg-L2";
            default:
                return zza2;
        }
    }

    static zzaq zzj(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                return new zzaq(Integer.parseInt(group, 16), group2 != null ? Integer.parseInt(group2) : 0);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    private static String zzk(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
