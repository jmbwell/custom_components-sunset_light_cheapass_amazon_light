package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
import org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolator;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzgw extends zzfs {
    private final Context zza;
    private zzge zzb;
    private AssetFileDescriptor zzc;
    private InputStream zzd;
    private long zze;
    private boolean zzf;

    public zzgw(Context context) {
        super(false);
        this.zza = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 15);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    private static AssetFileDescriptor zzk(Context context, zzge zzgeVar) throws zzgv {
        String host;
        Resources resourcesForApplication;
        int identifier;
        Uri normalizeScheme = zzgeVar.zza.normalizeScheme();
        if (TextUtils.equals("rawresource", normalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                identifier = zzl(pathSegments.get(0));
            } else {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 61);
                sb.append("rawresource:// URI must have exactly one path element, found ");
                sb.append(size);
                throw new zzgv(sb.toString());
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new zzgv("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                identifier = zzl(path);
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(host).length() + 1 + String.valueOf(path).length());
                sb2.append(host);
                sb2.append(":");
                sb2.append(path);
                identifier = resourcesForApplication.getIdentifier(sb2.toString(), "raw", null);
                if (identifier == 0) {
                    throw new zzgv("Resource not found.", null, 2005);
                }
            }
        } else {
            String scheme = normalizeScheme.getScheme();
            StringBuilder sb3 = new StringBuilder(String.valueOf(scheme).length() + 62);
            sb3.append("Unsupported URI scheme (");
            sb3.append(scheme);
            sb3.append("). Only android.resource is supported.");
            throw new zzgv(sb3.toString(), null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (openRawResourceFd != null) {
                return openRawResourceFd;
            }
            String valueOf = String.valueOf(normalizeScheme);
            String.valueOf(valueOf);
            throw new zzgv("Resource is compressed: ".concat(String.valueOf(valueOf)), null, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
        } catch (Resources.NotFoundException e2) {
            throw new zzgv(null, e2, 2005);
        }
    }

    private static int zzl(String str) throws zzgv {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new zzgv("Resource identifier must be an integer.", null, 1004);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzi
    public final int zza(byte[] bArr, int i, int i2) throws zzgv {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new zzgv(null, e, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
                }
            }
            InputStream inputStream = this.zzd;
            String str = zzeo.zza;
            InputStream inputStream2 = inputStream;
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                if (this.zze == -1) {
                    return -1;
                }
                throw new zzgv("End of stream reached having not read sufficient data.", new EOFException(), MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
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
    public final long zzb(zzge zzgeVar) throws zzgv {
        long j;
        this.zzb = zzgeVar;
        zzf(zzgeVar);
        AssetFileDescriptor zzk = zzk(this.zza, zzgeVar);
        this.zzc = zzk;
        long length = zzk.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.zzc.getFileDescriptor());
        this.zzd = fileInputStream;
        int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i != 0) {
            try {
                if (zzgeVar.zze > length) {
                    throw new zzgv(null, null, 2008);
                }
            } catch (zzgv e) {
                throw e;
            } catch (IOException e2) {
                throw new zzgv(null, e2, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
            }
        }
        long startOffset = this.zzc.getStartOffset();
        long j2 = zzgeVar.zze;
        long skip = fileInputStream.skip(startOffset + j2) - startOffset;
        if (skip != j2) {
            throw new zzgv(null, null, 2008);
        }
        if (i == 0) {
            FileChannel channel = fileInputStream.getChannel();
            if (channel.size() == 0) {
                this.zze = -1L;
                j = -1;
            } else {
                j = channel.size() - channel.position();
                this.zze = j;
                if (j < 0) {
                    throw new zzgv(null, null, 2008);
                }
            }
        } else {
            j = length - skip;
            this.zze = j;
            if (j < 0) {
                throw new zzgb(2008);
            }
        }
        long j3 = zzgeVar.zzf;
        int i2 = (j3 > (-1L) ? 1 : (j3 == (-1L) ? 0 : -1));
        if (i2 != 0) {
            this.zze = j == -1 ? j3 : Math.min(j, j3);
        }
        this.zzf = true;
        zzg(zzgeVar);
        return i2 != 0 ? j3 : this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final Uri zzc() {
        zzge zzgeVar = this.zzb;
        if (zzgeVar != null) {
            return zzgeVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzga
    public final void zzd() throws zzgv {
        this.zzb = null;
        try {
            try {
                InputStream inputStream = this.zzd;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e) {
                    throw new zzgv(null, e, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
                }
            } catch (IOException e2) {
                throw new zzgv(null, e2, MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS);
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
