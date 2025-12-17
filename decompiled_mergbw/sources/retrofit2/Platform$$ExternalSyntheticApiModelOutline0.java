package retrofit2;

import java.lang.invoke.MethodHandles;
import java.nio.file.CopyOption;
import java.nio.file.OpenOption;
import java.nio.file.attribute.FileAttributeView;
import java.util.Optional;
import java.util.StringJoiner;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.Flow;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
/* compiled from: D8$$SyntheticClass */
/* loaded from: classes5.dex */
public final /* synthetic */ class Platform$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ Class m() {
        return FileAttributeView.class;
    }

    public static /* bridge */ /* synthetic */ MethodHandles.Lookup m(Object obj) {
        return (MethodHandles.Lookup) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ CopyOption m2899m(Object obj) {
        return (CopyOption) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OpenOption m2900m(Object obj) {
        return (OpenOption) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileAttributeView m2903m(Object obj) {
        return (FileAttributeView) obj;
    }

    public static /* synthetic */ StringJoiner m(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        return new StringJoiner(charSequence, charSequence2, charSequence3);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ CompletableFuture m2908m() {
        return new CompletableFuture();
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ CompletionException m2909m(Object obj) {
        return (CompletionException) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Flow.Processor m2910m(Object obj) {
        return (Flow.Processor) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Flow.Publisher m2911m(Object obj) {
        return (Flow.Publisher) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Flow.Subscriber m2912m(Object obj) {
        return (Flow.Subscriber) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ BiConsumer m2913m(Object obj) {
        return (BiConsumer) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ BiFunction m2914m(Object obj) {
        return (BiFunction) obj;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m2918m(Object obj) {
        return obj instanceof CompletionException;
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return CompletableFuture.class;
    }

    public static /* bridge */ /* synthetic */ boolean m$1(Object obj) {
        return obj instanceof Flow.Publisher;
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return Optional.class;
    }

    public static /* bridge */ /* synthetic */ boolean m$2(Object obj) {
        return obj instanceof Flow.Subscriber;
    }

    public static /* bridge */ /* synthetic */ Class m$3() {
        return MethodHandles.Lookup.class;
    }

    public static /* bridge */ /* synthetic */ boolean m$3(Object obj) {
        return obj instanceof Flow.Processor;
    }
}
