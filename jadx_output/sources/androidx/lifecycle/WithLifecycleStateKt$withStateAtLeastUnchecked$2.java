package androidx.lifecycle;

import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: WithLifecycleState.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Opcodes.ARETURN)
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public final class WithLifecycleStateKt$withStateAtLeastUnchecked$2<R> implements Function0<R> {
    final /* synthetic */ Function0<R> $block;

    /* JADX WARN: Multi-variable type inference failed */
    public WithLifecycleStateKt$withStateAtLeastUnchecked$2(Function0<? extends R> function0) {
        this.$block = function0;
    }

    public final R invoke() {
        return (R) this.$block.invoke();
    }
}
