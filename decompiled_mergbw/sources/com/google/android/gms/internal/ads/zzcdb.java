package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
import org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzcdb extends zzfs implements zzgt {
    private static final Pattern zza = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference zzb = new AtomicReference();
    private final SSLSocketFactory zzc;
    private final int zzd;
    private final int zze;
    private final String zzf;
    private final zzgs zzg;
    private zzge zzh;
    private HttpURLConnection zzi;
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private int zzq;
    private final Set zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdb(String str, zzgy zzgyVar, int i, int i2, int i3) {
        super(true);
        this.zzc = new zzcda(this);
        this.zzr = new HashSet();
        zzcu.zza(str);
        this.zzf = str;
        this.zzg = new zzgs();
        this.zzd = i;
        this.zze = i2;
        this.zzq = i3;
        if (zzgyVar != null) {
            zze(zzgyVar);
        }
    }

    private final void zzn() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unexpected error while disconnecting", e);
            }
            this.zzi = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (r2 == 0) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e6 A[Catch: IOException -> 0x0300, TryCatch #3 {IOException -> 0x0300, blocks: (B:3:0x000e, B:4:0x0027, B:6:0x002d, B:8:0x003d, B:9:0x0045, B:10:0x005d, B:12:0x0063, B:20:0x0093, B:22:0x00b9, B:23:0x00d8, B:24:0x00dd, B:26:0x00e6, B:27:0x00ed, B:40:0x0115, B:94:0x029a, B:96:0x02a7, B:98:0x02b8, B:101:0x02c1, B:102:0x02d1, B:104:0x02da, B:105:0x02e1, B:106:0x02e2, B:107:0x02ff), top: B:117:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a7 A[Catch: IOException -> 0x0300, TryCatch #3 {IOException -> 0x0300, blocks: (B:3:0x000e, B:4:0x0027, B:6:0x002d, B:8:0x003d, B:9:0x0045, B:10:0x005d, B:12:0x0063, B:20:0x0093, B:22:0x00b9, B:23:0x00d8, B:24:0x00dd, B:26:0x00e6, B:27:0x00ed, B:40:0x0115, B:94:0x029a, B:96:0x02a7, B:98:0x02b8, B:101:0x02c1, B:102:0x02d1, B:104:0x02da, B:105:0x02e1, B:106:0x02e2, B:107:0x02ff), top: B:117:0x000e }] */
    @Override // com.google.android.gms.internal.ads.zzga
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzge r23) throws com.google.android.gms.internal.ads.zzgp {
        /*
            Method dump skipped, instructions count: 800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdb.zzb(com.google.android.gms.internal.ads.zzge):long");
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final void zzd() throws zzgp {
        try {
            if (this.zzj != null) {
                String str = zzeo.zza;
                try {
                    this.zzj.close();
                } catch (IOException e) {
                    throw new zzgp(e, this.zzh, (int) MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS, 3);
                }
            }
        } finally {
            this.zzj = null;
            zzn();
            if (this.zzk) {
                this.zzk = false;
                zzi();
            }
            this.zzr.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfs, com.google.android.gms.internal.ads.zzga
    public final Map zzj() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk(int i) {
        this.zzq = i;
        for (Socket socket : this.zzr) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzq);
                } catch (SocketException e) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(Socket socket) {
        this.zzr.add(socket);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int zzm() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzi
    public final int zza(byte[] bArr, int i, int i2) throws zzgp {
        try {
            if (this.zzo != this.zzm) {
                AtomicReference atomicReference = zzb;
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.zzo;
                    long j2 = this.zzm;
                    if (j != j2) {
                        int read = this.zzj.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                        if (Thread.interrupted()) {
                            throw new InterruptedIOException();
                        }
                        if (read != -1) {
                            this.zzo += read;
                            zzh(read);
                        } else {
                            throw new EOFException();
                        }
                    } else {
                        atomicReference.set(bArr2);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.zzn;
            if (j3 != -1) {
                long j4 = j3 - this.zzp;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                }
                return -1;
            }
            int read2 = this.zzj.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.zzn == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.zzp += read2;
            zzh(read2);
            return read2;
        } catch (IOException e) {
            throw new zzgp(e, this.zzh, (int) MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS, 2);
        }
    }
}
