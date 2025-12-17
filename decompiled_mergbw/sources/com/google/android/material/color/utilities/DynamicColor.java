package com.google.android.material.color.utilities;

import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.function.BiFunction;
import java.util.function.Function;
/* loaded from: classes4.dex */
public final class DynamicColor {
    public final Function<DynamicScheme, DynamicColor> background;
    public final Function<DynamicScheme, Double> chroma;
    private final HashMap<DynamicScheme, Hct> hctCache = new HashMap<>();
    public final Function<DynamicScheme, Double> hue;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaConstraint> toneDeltaConstraint;
    public final Function<DynamicScheme, Double> toneMaxContrast;
    public final Function<DynamicScheme, Double> toneMinContrast;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ TonalPalette lambda$fromArgb$0(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ DynamicColor lambda$getTone$11(DynamicColor dynamicColor, DynamicScheme dynamicScheme) {
        return dynamicColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$toneMinContrastDefault$16(Double d) {
        return d;
    }

    public DynamicColor(Function<DynamicScheme, Double> function, Function<DynamicScheme, Double> function2, Function<DynamicScheme, Double> function3, Function<DynamicScheme, Double> function4, Function<DynamicScheme, DynamicColor> function5, Function<DynamicScheme, Double> function6, Function<DynamicScheme, Double> function7, Function<DynamicScheme, ToneDeltaConstraint> function8) {
        this.hue = function;
        this.chroma = function2;
        this.tone = function3;
        this.opacity = function4;
        this.background = function5;
        this.toneMinContrast = function6;
        this.toneMaxContrast = function7;
        this.toneDeltaConstraint = function8;
    }

    public static DynamicColor fromArgb(int i) {
        final Hct fromInt = Hct.fromInt(i);
        final TonalPalette fromInt2 = TonalPalette.fromInt(i);
        return fromPalette(new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$fromArgb$0(TonalPalette.this, (DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                valueOf = Double.valueOf(Hct.this.getTone());
                return valueOf;
            }
        });
    }

    public static DynamicColor fromArgb(final int i, Function<DynamicScheme, Double> function) {
        return fromPalette(new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette fromInt;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                fromInt = TonalPalette.fromInt(i);
                return fromInt;
            }
        }, function);
    }

    public static DynamicColor fromArgb(final int i, Function<DynamicScheme, Double> function, Function<DynamicScheme, DynamicColor> function2) {
        return fromPalette(new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda12
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette fromInt;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                fromInt = TonalPalette.fromInt(i);
                return fromInt;
            }
        }, function, function2);
    }

    public static DynamicColor fromArgb(final int i, Function<DynamicScheme, Double> function, Function<DynamicScheme, DynamicColor> function2, Function<DynamicScheme, ToneDeltaConstraint> function3) {
        return fromPalette(new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda19
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette fromInt;
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                fromInt = TonalPalette.fromInt(i);
                return fromInt;
            }
        }, function, function2, function3);
    }

    public static DynamicColor fromPalette(Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2) {
        return fromPalette(function, function2, null, null);
    }

    public static DynamicColor fromPalette(Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, Function<DynamicScheme, DynamicColor> function3) {
        return fromPalette(function, function2, function3, null);
    }

    public static DynamicColor fromPalette(final Function<DynamicScheme, TonalPalette> function, final Function<DynamicScheme, Double> function2, final Function<DynamicScheme, DynamicColor> function3, final Function<DynamicScheme, ToneDeltaConstraint> function4) {
        return new DynamicColor(new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$fromPalette$5(function, (DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$fromPalette$6(function, (DynamicScheme) obj);
            }
        }, function2, null, function3, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(DynamicColor.toneMinContrastDefault(function2, function3, (DynamicScheme) obj, function4));
                return valueOf;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(DynamicColor.toneMaxContrastDefault(function2, function3, (DynamicScheme) obj, function4));
                return valueOf;
            }
        }, function4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$fromPalette$5(Function function, DynamicScheme dynamicScheme) {
        Object apply;
        apply = function.apply(dynamicScheme);
        return Double.valueOf(((TonalPalette) apply).getHue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$fromPalette$6(Function function, DynamicScheme dynamicScheme) {
        Object apply;
        apply = function.apply(dynamicScheme);
        return Double.valueOf(((TonalPalette) apply).getChroma());
    }

    public int getArgb(DynamicScheme dynamicScheme) {
        Object apply;
        int i = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i;
        }
        apply = function.apply(dynamicScheme);
        return (MathUtils.clampInt(0, 255, (int) Math.round(((Double) apply).doubleValue() * 255.0d)) << 24) | (i & ViewCompat.MEASURED_SIZE_MASK);
    }

    public Hct getHct(DynamicScheme dynamicScheme) {
        Object apply;
        Object apply2;
        Hct hct = this.hctCache.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        apply = this.hue.apply(dynamicScheme);
        double doubleValue = ((Double) apply).doubleValue();
        apply2 = this.chroma.apply(dynamicScheme);
        Hct from = Hct.from(doubleValue, ((Double) apply2).doubleValue(), getTone(dynamicScheme));
        if (this.hctCache.size() > 4) {
            this.hctCache.clear();
        }
        this.hctCache.put(dynamicScheme, from);
        return from;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        if (r7 != null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getTone(final com.google.android.material.color.utilities.DynamicScheme r16) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.color.utilities.DynamicColor.getTone(com.google.android.material.color.utilities.DynamicScheme):double");
    }

    public static double toneMinContrastDefault(final Function<DynamicScheme, Double> function, final Function<DynamicScheme, DynamicColor> function2, final DynamicScheme dynamicScheme, Function<DynamicScheme, ToneDeltaConstraint> function3) {
        return calculateDynamicTone(dynamicScheme, function, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda9
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$toneMinContrastDefault$14(DynamicScheme.this, (DynamicColor) obj);
            }
        }, new BiFunction() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda10
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return DynamicColor.lambda$toneMinContrastDefault$15(function, dynamicScheme, function2, (Double) obj, (Double) obj2);
            }
        }, function2, function3, null, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda11
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$toneMinContrastDefault$16((Double) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$toneMinContrastDefault$14(DynamicScheme dynamicScheme, DynamicColor dynamicColor) {
        Object apply;
        apply = dynamicColor.toneMinContrast.apply(dynamicScheme);
        return (Double) apply;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$toneMinContrastDefault$15(Function function, DynamicScheme dynamicScheme, Function function2, Double d, Double d2) {
        Object apply;
        Object apply2;
        Object apply3;
        Object apply4;
        Object apply5;
        apply = function.apply(dynamicScheme);
        double doubleValue = ((Double) apply).doubleValue();
        if (d.doubleValue() >= 7.0d) {
            doubleValue = contrastingTone(d2.doubleValue(), 4.5d);
        } else if (d.doubleValue() >= 3.0d) {
            doubleValue = contrastingTone(d2.doubleValue(), 3.0d);
        } else if (function2 != null) {
            apply2 = function2.apply(dynamicScheme);
            if (apply2 != null) {
                apply3 = function2.apply(dynamicScheme);
                if (((DynamicColor) apply3).background != null) {
                    apply4 = function2.apply(dynamicScheme);
                    apply5 = ((DynamicColor) apply4).background.apply(dynamicScheme);
                    if (apply5 != null) {
                        doubleValue = contrastingTone(d2.doubleValue(), d.doubleValue());
                    }
                }
            }
        }
        return Double.valueOf(doubleValue);
    }

    public static double toneMaxContrastDefault(Function<DynamicScheme, Double> function, final Function<DynamicScheme, DynamicColor> function2, final DynamicScheme dynamicScheme, Function<DynamicScheme, ToneDeltaConstraint> function3) {
        return calculateDynamicTone(dynamicScheme, function, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$toneMaxContrastDefault$17(DynamicScheme.this, (DynamicColor) obj);
            }
        }, new BiFunction() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda8
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return DynamicColor.lambda$toneMaxContrastDefault$18(function2, dynamicScheme, (Double) obj, (Double) obj2);
            }
        }, function2, function3, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$toneMaxContrastDefault$17(DynamicScheme dynamicScheme, DynamicColor dynamicColor) {
        Object apply;
        apply = dynamicColor.toneMaxContrast.apply(dynamicScheme);
        return (Double) apply;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Double lambda$toneMaxContrastDefault$18(Function function, DynamicScheme dynamicScheme, Double d, Double d2) {
        Object apply;
        Object apply2;
        Object apply3;
        Object apply4;
        if (function != null) {
            apply = function.apply(dynamicScheme);
            if (apply != null) {
                apply2 = function.apply(dynamicScheme);
                if (((DynamicColor) apply2).background != null) {
                    apply3 = function.apply(dynamicScheme);
                    apply4 = ((DynamicColor) apply3).background.apply(dynamicScheme);
                    if (apply4 != null) {
                        return Double.valueOf(contrastingTone(d2.doubleValue(), 7.0d));
                    }
                }
            }
        }
        return Double.valueOf(contrastingTone(d2.doubleValue(), Math.max(7.0d, d.doubleValue())));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double calculateDynamicTone(com.google.android.material.color.utilities.DynamicScheme r22, java.util.function.Function<com.google.android.material.color.utilities.DynamicScheme, java.lang.Double> r23, java.util.function.Function<com.google.android.material.color.utilities.DynamicColor, java.lang.Double> r24, java.util.function.BiFunction<java.lang.Double, java.lang.Double, java.lang.Double> r25, java.util.function.Function<com.google.android.material.color.utilities.DynamicScheme, com.google.android.material.color.utilities.DynamicColor> r26, java.util.function.Function<com.google.android.material.color.utilities.DynamicScheme, com.google.android.material.color.utilities.ToneDeltaConstraint> r27, java.util.function.Function<java.lang.Double, java.lang.Double> r28, java.util.function.Function<java.lang.Double, java.lang.Double> r29) {
        /*
            r4 = r22
            r0 = r26
            r1 = r28
            r2 = r23
            r3 = r29
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r2, r4)
            java.lang.Double r2 = (java.lang.Double) r2
            double r5 = r2.doubleValue()
            if (r0 != 0) goto L18
            r0 = 0
            goto L1e
        L18:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r0, r4)
            com.google.android.material.color.utilities.DynamicColor r0 = (com.google.android.material.color.utilities.DynamicColor) r0
        L1e:
            if (r0 != 0) goto L21
            return r5
        L21:
            java.util.function.Function<com.google.android.material.color.utilities.DynamicScheme, java.lang.Double> r2 = r0.tone
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r2, r4)
            java.lang.Double r2 = (java.lang.Double) r2
            double r7 = r2.doubleValue()
            double r7 = com.google.android.material.color.utilities.Contrast.ratioOfTones(r5, r7)
            r9 = r24
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r9, r0)
            java.lang.Double r2 = (java.lang.Double) r2
            double r10 = r2.doubleValue()
            java.lang.Double r12 = java.lang.Double.valueOf(r7)
            r13 = r25
            java.lang.Object r2 = com.google.firebase.Timestamp$$ExternalSyntheticApiModelOutline0.m(r13, r12, r2)
            java.lang.Double r2 = (java.lang.Double) r2
            double r12 = r2.doubleValue()
            double r20 = com.google.android.material.color.utilities.Contrast.ratioOfTones(r10, r12)
            r14 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            if (r1 != 0) goto L56
            goto L70
        L56:
            java.lang.Double r2 = java.lang.Double.valueOf(r7)
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r1, r2)
            if (r2 != 0) goto L61
            goto L70
        L61:
            java.lang.Double r2 = java.lang.Double.valueOf(r7)
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r1, r2)
            java.lang.Double r1 = (java.lang.Double) r1
            double r1 = r1.doubleValue()
            r14 = r1
        L70:
            if (r3 != 0) goto L75
        L72:
            r16 = 4626604192193052672(0x4035000000000000, double:21.0)
            goto L90
        L75:
            java.lang.Double r1 = java.lang.Double.valueOf(r7)
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r3, r1)
            if (r1 != 0) goto L80
            goto L72
        L80:
            java.lang.Double r1 = java.lang.Double.valueOf(r7)
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r3, r1)
            java.lang.Double r1 = (java.lang.Double) r1
            double r1 = r1.doubleValue()
            r16 = r1
        L90:
            r18 = r20
            double r1 = com.google.android.material.color.utilities.MathUtils.clampDouble(r14, r16, r18)
            int r3 = (r1 > r20 ? 1 : (r1 == r20 ? 0 : -1))
            if (r3 != 0) goto L9b
            goto L9f
        L9b:
            double r12 = contrastingTone(r10, r1)
        L9f:
            java.util.function.Function<com.google.android.material.color.utilities.DynamicScheme, com.google.android.material.color.utilities.DynamicColor> r0 = r0.background
            if (r0 == 0) goto Lac
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzed$$ExternalSyntheticApiModelOutline1.m(r0, r4)
            if (r0 != 0) goto Laa
            goto Lac
        Laa:
            r0 = r12
            goto Lb0
        Lac:
            double r0 = enableLightForeground(r12)
        Lb0:
            r2 = r5
            r4 = r22
            r5 = r27
            r6 = r24
            double r0 = ensureToneDelta(r0, r2, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.color.utilities.DynamicColor.calculateDynamicTone(com.google.android.material.color.utilities.DynamicScheme, java.util.function.Function, java.util.function.Function, java.util.function.BiFunction, java.util.function.Function, java.util.function.Function, java.util.function.Function, java.util.function.Function):double");
    }

    static double ensureToneDelta(double d, double d2, DynamicScheme dynamicScheme, Function<DynamicScheme, ToneDeltaConstraint> function, Function<DynamicColor, Double> function2) {
        Object apply;
        ToneDeltaConstraint toneDeltaConstraint;
        Object apply2;
        Object apply3;
        if (function == null) {
            toneDeltaConstraint = null;
        } else {
            apply = function.apply(dynamicScheme);
            toneDeltaConstraint = (ToneDeltaConstraint) apply;
        }
        if (toneDeltaConstraint == null) {
            return d;
        }
        double d3 = toneDeltaConstraint.delta;
        apply2 = function2.apply(toneDeltaConstraint.keepAway);
        double doubleValue = ((Double) apply2).doubleValue();
        double abs = Math.abs(d - doubleValue);
        if (abs >= d3) {
            return d;
        }
        int i = AnonymousClass1.$SwitchMap$com$google$android$material$color$utilities$TonePolarity[toneDeltaConstraint.keepAwayPolarity.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return d;
                }
                apply3 = toneDeltaConstraint.keepAway.tone.apply(dynamicScheme);
                boolean z = d2 > ((Double) apply3).doubleValue();
                double abs2 = Math.abs(abs - d3);
                return (!z ? d < abs2 : d + abs2 <= 100.0d) ? d - abs2 : d + abs2;
            }
            return MathUtils.clampDouble(0.0d, 100.0d, doubleValue - d3);
        }
        return MathUtils.clampDouble(0.0d, 100.0d, doubleValue + d3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.color.utilities.DynamicColor$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$material$color$utilities$TonePolarity;

        static {
            int[] iArr = new int[TonePolarity.values().length];
            $SwitchMap$com$google$android$material$color$utilities$TonePolarity = iArr;
            try {
                iArr[TonePolarity.DARKER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$material$color$utilities$TonePolarity[TonePolarity.LIGHTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$material$color$utilities$TonePolarity[TonePolarity.NO_PREFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static double contrastingTone(double d, double d2) {
        double lighterUnsafe = Contrast.lighterUnsafe(d, d2);
        double darkerUnsafe = Contrast.darkerUnsafe(d, d2);
        double ratioOfTones = Contrast.ratioOfTones(lighterUnsafe, d);
        double ratioOfTones2 = Contrast.ratioOfTones(darkerUnsafe, d);
        if (tonePrefersLightForeground(d)) {
            return (ratioOfTones >= d2 || ratioOfTones >= ratioOfTones2 || ((Math.abs(ratioOfTones - ratioOfTones2) > 0.1d ? 1 : (Math.abs(ratioOfTones - ratioOfTones2) == 0.1d ? 0 : -1)) < 0 && (ratioOfTones > d2 ? 1 : (ratioOfTones == d2 ? 0 : -1)) < 0 && (ratioOfTones2 > d2 ? 1 : (ratioOfTones2 == d2 ? 0 : -1)) < 0)) ? lighterUnsafe : darkerUnsafe;
        }
        return (ratioOfTones2 >= d2 || ratioOfTones2 >= ratioOfTones) ? darkerUnsafe : lighterUnsafe;
    }

    public static double enableLightForeground(double d) {
        if (!tonePrefersLightForeground(d) || toneAllowsLightForeground(d)) {
            return d;
        }
        return 49.0d;
    }

    public static boolean tonePrefersLightForeground(double d) {
        return Math.round(d) < 60;
    }

    public static boolean toneAllowsLightForeground(double d) {
        return Math.round(d) <= 49;
    }
}
