package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;
import org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolator;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzfx extends zzfs {
    private final ContentResolver zza;
    private Uri zzb;
    private AssetFileDescriptor zzc;
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzfx(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzi
    public final int zza(byte[] bArr, int i, int i2) throws zzfw {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new zzfw(e, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
                }
            }
            FileInputStream fileInputStream = this.zzd;
            String str = zzeo.zza;
            FileInputStream fileInputStream2 = fileInputStream;
            int read = fileInputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            long j2 = this.zze;
            if (j2 != -1) {
                this.zze = j2 - read;
            }
            zzh(read);
            return read;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final long zzb(zzge zzgeVar) throws zzfw {
        int i;
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        try {
            try {
                Uri normalizeScheme = zzgeVar.zza.normalizeScheme();
                this.zzb = normalizeScheme;
                zzf(zzgeVar);
                if (Objects.equals(normalizeScheme.getScheme(), FirebaseAnalytics.Param.CONTENT)) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = this.zza.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = this.zza.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.zzc = openAssetFileDescriptor;
                if (openAssetFileDescriptor == null) {
                    String valueOf = String.valueOf(normalizeScheme);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                    sb.append("Could not open file descriptor for: ");
                    sb.append(valueOf);
                    IOException iOException = new IOException(sb.toString());
                    i = MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS;
                    try {
                        throw new zzfw(iOException, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
                    } catch (IOException e) {
                        e = e;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzfw(e, i);
                    }
                }
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.zzd = fileInputStream;
                int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i2 != 0 && zzgeVar.zze > length) {
                    throw new zzfw(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long j2 = zzgeVar.zze;
                long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                if (skip != j2) {
                    throw new zzfw(null, 2008);
                }
                if (i2 == 0) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.zze = -1L;
                        j = -1;
                    } else {
                        j = size - channel.position();
                        this.zze = j;
                        if (j < 0) {
                            throw new zzfw(null, 2008);
                        }
                    }
                } else {
                    j = length - skip;
                    this.zze = j;
                    if (j < 0) {
                        throw new zzfw(null, 2008);
                    }
                }
                long j3 = zzgeVar.zzf;
                int i3 = (j3 > (-1L) ? 1 : (j3 == (-1L) ? 0 : -1));
                if (i3 != 0) {
                    this.zze = j == -1 ? j3 : Math.min(j, j3);
                }
                this.zzf = true;
                zzg(zzgeVar);
                return i3 != 0 ? j3 : this.zze;
            } catch (IOException e2) {
                e = e2;
                i = MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS;
            }
        } catch (zzfw e3) {
            throw e3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final void zzd() throws zzfw {
        this.zzb = null;
        try {
            try {
                FileInputStream fileInputStream = this.zzd;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e) {
                    throw new zzfw(e, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
                }
            } catch (IOException e2) {
                throw new zzfw(e2, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
            }
        } finally {
            this.zzc = null;
            if (this.zzf) {
                this.zzf = false;
                zzi();
            }
        }
    }
}
