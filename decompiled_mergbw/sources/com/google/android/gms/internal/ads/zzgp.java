package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolator;
/* compiled from: com.google.android.gms:play-services-ads@@24.6.0 */
/* loaded from: classes3.dex */
public class zzgp extends zzgb {
    public final int zzb;

    public zzgp(zzge zzgeVar, int i, int i2) {
        super(zzb(2008, 1));
        this.zzb = 1;
    }

    public static zzgp zza(IOException iOException, zzge zzgeVar, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else {
            i2 = (message == null || !zzggj.zza(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        if (i2 == 2007) {
            return new zzgo(iOException, zzgeVar);
        }
        return new zzgp(iOException, zzgeVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        if (i == 2000) {
            if (i2 != 1) {
                return MicrosphereInterpolator.DEFAULT_MICROSPHERE_ELEMENTS;
            }
            return 2001;
        }
        return i;
    }

    public zzgp(IOException iOException, zzge zzgeVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = i2;
    }

    public zzgp(String str, zzge zzgeVar, int i, int i2) {
        super(str, zzb(i, i2));
        this.zzb = i2;
    }

    public zzgp(String str, IOException iOException, zzge zzgeVar, int i, int i2) {
        super(str, iOException, zzb(i, i2));
        this.zzb = i2;
    }
}
