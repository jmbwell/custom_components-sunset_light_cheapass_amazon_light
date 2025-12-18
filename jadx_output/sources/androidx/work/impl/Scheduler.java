package androidx.work.impl;

import androidx.work.impl.model.WorkSpec;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface Scheduler {
    public static final int MAX_GREEDY_SCHEDULER_LIMIT = 200;
    public static final int MAX_SCHEDULER_LIMIT = 50;

    void cancel(String workSpecId);

    boolean hasLimitedSchedulingSlots();

    void schedule(WorkSpec... workSpecs);
}
