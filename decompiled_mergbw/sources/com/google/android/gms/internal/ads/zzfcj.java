package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.HtmlCompat;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.parser.JSONLexer;
import com.clj.fastble.data.BleMsg;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mergbw.core.Constants;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.io.encoding.Base64;
import kotlin.text.Typography;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfcj {
    public final zzbxc zzA;
    public final String zzB;
    public final JSONObject zzC;
    public final JSONObject zzD;
    public final String zzE;
    public final String zzF;
    public final String zzG;
    public final String zzH;
    public final String zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final int zzQ;
    public final int zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final String zzU;
    public final zzfdf zzV;
    public final boolean zzW;
    public final boolean zzX;
    public final int zzY;
    public final String zzZ;
    public final List zza;
    public final List zzaA;
    public final boolean zzaB;
    public final List zzaC;
    public final boolean zzaD;
    public final int zzaE;
    public final int zzaa;
    public final String zzab;
    public final boolean zzac;
    public final zzbtc zzad;
    public final com.google.android.gms.ads.internal.client.zzt zzae;
    public final String zzaf;
    public final boolean zzag;
    public final JSONObject zzah;
    public final boolean zzai;
    public final JSONObject zzaj;
    public final boolean zzak;
    public final String zzal;
    public final boolean zzam;
    public final String zzan;
    public final String zzao;
    public final String zzap;
    public final boolean zzaq;
    public final boolean zzar;
    public final int zzas;
    public final String zzat;
    public final List zzau;
    public final boolean zzav;
    public final Map zzaw;
    public final com.google.android.gms.ads.internal.util.client.zzv zzax;
    public final com.google.android.gms.ads.internal.util.client.zzw zzay;
    public final double zzaz;
    public final int zzb;
    public final List zzc;
    public final List zzd;
    public final int zze;
    public final List zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final String zzj;
    public final String zzk;
    public final zzbvt zzl;
    public final List zzm;
    public final List zzn;
    public final List zzo;
    public final List zzp;
    public final int zzq;
    public final List zzr;
    public final zzfco zzs;
    public final List zzt;
    public final List zzu;
    public final JSONObject zzv;
    public final String zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v284, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v291, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v308, types: [java.util.List] */
    public zzfcj(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List list;
        List list2;
        char c2;
        List emptyList = Collections.emptyList();
        List emptyList2 = Collections.emptyList();
        List emptyList3 = Collections.emptyList();
        List emptyList4 = Collections.emptyList();
        List emptyList5 = Collections.emptyList();
        List emptyList6 = Collections.emptyList();
        List emptyList7 = Collections.emptyList();
        List emptyList8 = Collections.emptyList();
        List emptyList9 = Collections.emptyList();
        List emptyList10 = Collections.emptyList();
        List emptyList11 = Collections.emptyList();
        List emptyList12 = Collections.emptyList();
        List emptyList13 = Collections.emptyList();
        List emptyList14 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        zzgjz.zzi();
        zzgjz zzi = zzgjz.zzi();
        HashMap hashMap = new HashMap();
        zzgjz zzi2 = zzgjz.zzi();
        zzgjz zzi3 = zzgjz.zzi();
        jsonReader.beginObject();
        JSONObject jSONObject7 = jSONObject2;
        JSONObject jSONObject8 = jSONObject3;
        JSONObject jSONObject9 = jSONObject4;
        JSONObject jSONObject10 = jSONObject5;
        JSONObject jSONObject11 = jSONObject6;
        zzgjz zzgjzVar = zzi;
        HashMap hashMap2 = hashMap;
        zzgjz zzgjzVar2 = zzi2;
        zzgjz zzgjzVar3 = zzi3;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        int i7 = 0;
        boolean z19 = false;
        boolean z20 = false;
        boolean z21 = false;
        double d = 0.0d;
        zzfco zzfcoVar = null;
        zzbxc zzbxcVar = null;
        zzbtc zzbtcVar = null;
        com.google.android.gms.ads.internal.client.zzt zztVar = null;
        String str = null;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = null;
        com.google.android.gms.ads.internal.util.client.zzw zzwVar = null;
        String str2 = "";
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
        String str18 = str17;
        String str19 = str18;
        List list3 = emptyList11;
        List list4 = emptyList12;
        List list5 = emptyList13;
        List list6 = emptyList14;
        JSONObject jSONObject12 = jSONObject;
        int i8 = 0;
        int i9 = 0;
        zzbvt zzbvtVar = null;
        String str20 = str19;
        String str21 = str20;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str22 = nextName == null ? "" : nextName;
            switch (str22.hashCode()) {
                case -2138196627:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_source_instance_name")) {
                        c2 = ';';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1980587809:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("debug_signals")) {
                        c2 = 28;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1965512151:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("omid_settings")) {
                        c2 = ')';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1964744830:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("offline_ad_config")) {
                        c2 = 'O';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1871425831:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("recursive_server_response_data")) {
                        c2 = 'E';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1843156475:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_consent")) {
                        c2 = 'G';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1840512279:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("presentation_urls")) {
                        c2 = 'Q';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1828733410:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("network_ping_config")) {
                        c2 = 'N';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1812055556:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("play_prewarm_options")) {
                        c2 = '1';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1785028569:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("parallel_key")) {
                        c2 = 'I';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1776946669:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_source_name")) {
                        c2 = '9';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1662989631:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_interscroller")) {
                        c2 = '5';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1620470467:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("backend_query_id")) {
                        c2 = '/';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1550155393:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("nofill_urls")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1440104884:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_custom_close_blocked")) {
                        c2 = '#';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1439500848:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("orientation")) {
                        c2 = '%';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1428969291:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("enable_omid")) {
                        c2 = '\'';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1406227629:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("buffer_click_url_as_ready_to_ping")) {
                        c2 = 'C';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1403779768:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("showable_impression_type")) {
                        c2 = AbstractJsonLexerKt.COMMA;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1375413093:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_cover")) {
                        c2 = '6';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1360811658:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_sizes")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1306015996:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("adapters")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1303332046:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("test_mode_enabled")) {
                        c2 = '\"';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1289032093:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("extras")) {
                        c2 = 29;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1240082064:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_event_value")) {
                        c2 = '3';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1234181075:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("allow_pub_rendered_attribution")) {
                        c2 = 30;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1168140544:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("presentation_error_urls")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1152230954:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_type")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1146534047:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_scroll_aware")) {
                        c2 = '+';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1115838944:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("fill_urls")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1081936678:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("allocation_id")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1078050970:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("video_complete_urls")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1051269058:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("active_view")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -982608540:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("valid_from_timestamp")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -972056451:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_source_instance_id")) {
                        c2 = Typography.less;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -776859333:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("click_urls")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -652881372:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("on_device_storage_configs")) {
                        c2 = 'S';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -570101180:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("late_load_urls")) {
                        c2 = 'J';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -544216775:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("safe_browsing")) {
                        c2 = JSONLexer.EOI;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -437057161:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("imp_urls")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404433734:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("rtb_native_required_assets")) {
                        c2 = Typography.greater;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404326515:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("render_timeout_ms")) {
                        c2 = Typography.amp;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -397704715:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_close_time_ms")) {
                        c2 = '-';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -388807511:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("content_url")) {
                        c2 = '@';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -369773488:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_close_button_enabled")) {
                        c2 = '2';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -213449460:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("force_disable_hardware_acceleration")) {
                        c2 = 'A';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -213424028:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("watermark")) {
                        c2 = '.';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -180214626:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("native_required_asset_viewability")) {
                        c2 = '?';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -154616268:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_offline_ad")) {
                        c2 = '=';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -29338502:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("allow_custom_click_gesture")) {
                        c2 = ' ';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3107:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("id")) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3076010:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("data")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 37109963:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("request_id")) {
                        c2 = 'D';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 63195984:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("render_test_label")) {
                        c2 = '!';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 107433883:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("qdata")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 230323073:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_load_urls")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 418392395:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_closable_area_disabled")) {
                        c2 = Typography.dollar;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 542250332:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("consent_form_action_identifier")) {
                        c2 = 'H';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 549176928:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("presentation_error_timeout_ms")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 597473788:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("debug_dialog_string")) {
                        c2 = 27;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 754887508:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("container_sizes")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 791122864:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("impression_type")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 805095541:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("analytics_event_name_to_parameters_map")) {
                        c2 = 'M';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1010584092:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals(FirebaseAnalytics.Param.TRANSACTION_ID)) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1100650276:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("rewards")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1141602460:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("adapter_response_info_key")) {
                        c2 = '8';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1186014765:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("cache_hit_urls")) {
                        c2 = 'B';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1303622534:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("preload_sort_value")) {
                        c2 = 'L';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1321720943:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("allow_pub_owned_ad_view")) {
                        c2 = 31;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1422388341:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_collapsible")) {
                        c2 = 'F';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1437255331:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_source_id")) {
                        c2 = AbstractJsonLexerKt.COLON;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1556932485:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("post_click_lifecycle_monitoring_duration_ms")) {
                        c2 = 'P';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1565514205:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("adapter_only_third_party_impression")) {
                        c2 = 'T';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1637553475:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("bid_response")) {
                        c2 = '(';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1638957285:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("video_start_urls")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1686319423:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("ad_network_class_name")) {
                        c2 = '7';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1688341040:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("video_reward_urls")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1799285870:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("use_third_party_container_height")) {
                        c2 = '0';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1839650832:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("renderers")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1875425491:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("is_analytics_logging_enabled")) {
                        c2 = '*';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2068142375:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("rule_line_external_id")) {
                        c2 = '4';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2072888499:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("manual_tracking_urls")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2075506442:
                    list = emptyList9;
                    list2 = emptyList10;
                    if (str22.equals("render_serially")) {
                        c2 = 'K';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2117205836:
                    list2 = emptyList10;
                    list = emptyList9;
                    if (str22.equals("flow_control")) {
                        c2 = 'R';
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    list = emptyList9;
                    list2 = emptyList10;
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    emptyList = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 1:
                    i8 = zzc(jsonReader.nextString());
                    break;
                case 2:
                    emptyList2 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 3:
                    emptyList3 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 4:
                    emptyList4 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 5:
                    i9 = zzd(jsonReader.nextInt());
                    break;
                case 6:
                    emptyList5 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 7:
                    emptyList6 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case '\b':
                    emptyList7 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case '\t':
                    str21 = jsonReader.nextString();
                    break;
                case '\n':
                    str20 = jsonReader.nextString();
                    break;
                case 11:
                    zzbvtVar = zzbvt.zza(com.google.android.gms.ads.internal.util.zzbp.zze(jsonReader));
                    break;
                case '\f':
                    emptyList8 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case '\r':
                    emptyList9 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    continue;
                    emptyList10 = list2;
                case 14:
                    list2 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 15:
                    list3 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 16:
                    i4 = jsonReader.nextInt();
                    break;
                case 17:
                    list4 = zzfck.zza(jsonReader);
                    break;
                case 18:
                    zzfcoVar = new zzfco(jsonReader);
                    break;
                case 19:
                    list6 = zzfck.zza(jsonReader);
                    break;
                case 20:
                    list5 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 21:
                    str2 = jsonReader.nextString();
                    break;
                case 22:
                    jSONObject12 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case 23:
                    str3 = jsonReader.nextString();
                    break;
                case 24:
                    str4 = jsonReader.nextString();
                    break;
                case 25:
                    str5 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader).toString();
                    break;
                case 26:
                    zzbxcVar = zzbxc.zza(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                    break;
                case 27:
                    str6 = jsonReader.nextString();
                    break;
                case 28:
                    jSONObject7 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    jSONObject8 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case 30:
                    z = jsonReader.nextBoolean();
                    break;
                case 31:
                    z2 = jsonReader.nextBoolean();
                    break;
                case ' ':
                    z3 = jsonReader.nextBoolean();
                    break;
                case '!':
                    z4 = jsonReader.nextBoolean();
                    break;
                case '\"':
                    z5 = jsonReader.nextBoolean();
                    break;
                case '#':
                    z6 = jsonReader.nextBoolean();
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    break;
                case '%':
                    i = zze(jsonReader.nextString());
                    break;
                case '&':
                    i5 = jsonReader.nextInt();
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    break;
                case '(':
                    str7 = jsonReader.nextString();
                    break;
                case ')':
                    jSONObject9 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case '*':
                    z9 = jsonReader.nextBoolean();
                    break;
                case '+':
                    z10 = jsonReader.nextBoolean();
                    break;
                case ',':
                    i6 = jsonReader.nextInt();
                    break;
                case '-':
                    i2 = jsonReader.nextInt();
                    break;
                case '.':
                    str8 = jsonReader.nextString();
                    break;
                case '/':
                    str9 = jsonReader.nextString();
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    z11 = jsonReader.nextBoolean();
                    break;
                case '1':
                    zzbtcVar = zzbtc.zza(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                    break;
                case '2':
                    jsonReader.nextBoolean();
                    break;
                case '3':
                    zztVar = com.google.android.gms.ads.internal.client.zzt.zza(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                    break;
                case '4':
                    str10 = jsonReader.nextString();
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                    z12 = jsonReader.nextBoolean();
                    break;
                case '6':
                    jSONObject10 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case '7':
                    str11 = jsonReader.nextString();
                    break;
                case Opcodes.FSTORE /* 56 */:
                    str18 = jsonReader.nextString();
                    break;
                case Opcodes.DSTORE /* 57 */:
                    str12 = jsonReader.nextString();
                    break;
                case Opcodes.ASTORE /* 58 */:
                    str13 = jsonReader.nextString();
                    break;
                case ';':
                    str14 = jsonReader.nextString();
                    break;
                case LockFreeTaskQueueCore.FROZEN_SHIFT /* 60 */:
                    str15 = jsonReader.nextString();
                    break;
                case '=':
                    z13 = jsonReader.nextBoolean();
                    break;
                case '>':
                    jSONObject11 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                    break;
                case HtmlCompat.FROM_HTML_MODE_COMPACT /* 63 */:
                    z14 = jsonReader.nextBoolean();
                    break;
                case '@':
                    str = jsonReader.nextString();
                    break;
                case 'A':
                    z15 = jsonReader.nextBoolean();
                    break;
                case 'B':
                    com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL /* 67 */:
                    z16 = jsonReader.nextBoolean();
                    break;
                case 'D':
                    str16 = jsonReader.nextString();
                    break;
                case 'E':
                    str17 = jsonReader.nextString();
                    break;
                case Constants.DEFAULT_AUDIO_SENSITIVE /* 70 */:
                    z17 = jsonReader.nextBoolean();
                    break;
                case 'G':
                    z18 = jsonReader.nextBoolean();
                    break;
                case 'H':
                    i7 = jsonReader.nextInt();
                    break;
                case 'I':
                    str19 = jsonReader.nextString();
                    break;
                case 'J':
                    zzgjzVar = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case 'K':
                    z19 = jsonReader.nextBoolean();
                    break;
                case Base64.mimeLineLength /* 76 */:
                    d = jsonReader.nextDouble();
                    emptyList9 = list;
                    continue;
                    emptyList10 = list2;
                case 'M':
                    if (((Boolean) zzbci.zzat.zzg()).booleanValue()) {
                        hashMap2 = com.google.android.gms.ads.internal.util.zzbp.zzc(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'N':
                    if (((Boolean) zzbci.zzjo.zzg()).booleanValue()) {
                        zzvVar = com.google.android.gms.ads.internal.util.client.zzv.zzb(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case Opcodes.IASTORE /* 79 */:
                    if (((Boolean) zzbci.zzjq.zzg()).booleanValue()) {
                        zzwVar = com.google.android.gms.ads.internal.util.client.zzw.zzd(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'P':
                    if (((Boolean) zzbci.zznG.zzg()).booleanValue()) {
                        i3 = jsonReader.nextInt();
                    } else {
                        jsonReader.skipValue();
                    }
                    break;
                case BleMsg.MSG_READ_RSSI_START /* 81 */:
                    zzgjzVar2 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                    break;
                case BleMsg.MSG_READ_RSSI_RESULT /* 82 */:
                    z20 = jsonReader.nextBoolean();
                    break;
                case 'S':
                    if (((Boolean) zzbci.zzio.zzg()).booleanValue()) {
                        zzgjzVar3 = zzdtq.zza(jsonReader);
                        break;
                    } else {
                        jsonReader.skipValue();
                        break;
                    }
                case 'T':
                    z21 = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
            emptyList9 = list;
            emptyList10 = list2;
        }
        jsonReader.endObject();
        this.zza = emptyList;
        this.zzb = i8;
        this.zzc = emptyList2;
        this.zzd = emptyList3;
        this.zzf = emptyList4;
        this.zze = i9;
        this.zzg = emptyList5;
        this.zzh = emptyList6;
        this.zzi = emptyList7;
        this.zzj = str21;
        this.zzk = str20;
        this.zzl = zzbvtVar;
        this.zzm = emptyList8;
        this.zzn = emptyList9;
        this.zzo = emptyList10;
        this.zzp = list3;
        this.zzq = i4;
        this.zzr = list4;
        this.zzs = zzfcoVar;
        this.zzt = list5;
        this.zzu = list6;
        this.zzw = str2;
        this.zzv = jSONObject12;
        this.zzx = str3;
        this.zzy = str4;
        this.zzz = str5;
        this.zzA = zzbxcVar;
        this.zzB = str6;
        this.zzC = jSONObject7;
        this.zzD = jSONObject8;
        this.zzJ = z;
        this.zzK = z2;
        this.zzL = z3;
        this.zzM = z4;
        this.zzN = z5;
        this.zzO = z6;
        this.zzP = z7;
        this.zzQ = i;
        this.zzR = i5;
        this.zzT = z8;
        this.zzU = str7;
        this.zzV = new zzfdf(jSONObject9);
        this.zzW = z9;
        this.zzX = z10;
        this.zzY = i6;
        this.zzZ = str8;
        this.zzaa = i2;
        this.zzab = str9;
        this.zzac = z11;
        this.zzad = zzbtcVar;
        this.zzae = zztVar;
        this.zzaf = str10;
        this.zzag = z12;
        this.zzah = jSONObject10;
        this.zzE = str11;
        this.zzF = str12;
        this.zzG = str13;
        this.zzH = str14;
        this.zzI = str15;
        this.zzai = z13;
        this.zzaj = jSONObject11;
        this.zzak = z14;
        this.zzal = str;
        this.zzam = z15;
        this.zzS = z16;
        this.zzan = str16;
        this.zzao = str17;
        this.zzap = str18;
        this.zzaq = z17;
        this.zzar = z18;
        this.zzas = i7;
        this.zzau = zzgjzVar;
        this.zzat = str19;
        this.zzav = z19;
        this.zzaw = hashMap2;
        this.zzax = zzvVar;
        this.zzay = zzwVar;
        this.zzaz = d;
        this.zzaA = zzgjzVar2;
        this.zzaB = z20;
        this.zzaC = zzgjzVar3;
        this.zzaD = z21;
        this.zzaE = i3;
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    private static int zzc(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if ("interstitial".equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if ("native".equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    private static int zzd(int i) {
        if (i == 0 || i == 1 || i == 3 || i == 4) {
            return i;
        }
        return 0;
    }

    private static int zze(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        return "portrait".equalsIgnoreCase(str) ? 7 : -1;
    }

    public final boolean zzb() {
        return this.zzai || this.zzay != null;
    }
}
