package androidx.work.impl.model;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class Dependency {
    public final String prerequisiteId;
    public final String workSpecId;

    public Dependency(String workSpecId, String prerequisiteId) {
        this.workSpecId = workSpecId;
        this.prerequisiteId = prerequisiteId;
    }
}
