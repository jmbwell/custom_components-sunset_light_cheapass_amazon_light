package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.6.0 */
/* loaded from: classes3.dex */
public final class zzghk implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzghq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzghk(zzghq zzghqVar, CharSequence charSequence) {
        this.zza = charSequence;
        Objects.requireNonNull(zzghqVar);
        this.zzb = zzghqVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zzb.zzf(this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractJsonLexerKt.BEGIN_LIST);
        zzggw.zzb(sb, this, ", ");
        sb.append(AbstractJsonLexerKt.END_LIST);
        return sb.toString();
    }
}
