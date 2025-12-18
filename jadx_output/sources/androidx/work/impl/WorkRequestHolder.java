package androidx.work.impl;

import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import java.util.Set;
import java.util.UUID;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class WorkRequestHolder extends WorkRequest {
    public WorkRequestHolder(UUID id, WorkSpec workSpec, Set<String> tags) {
        super(id, workSpec, tags);
    }
}
