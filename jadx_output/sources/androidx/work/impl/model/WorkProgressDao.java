package androidx.work.impl.model;

import androidx.work.Data;
import java.util.List;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface WorkProgressDao {
    void delete(String workSpecId);

    void deleteAll();

    Data getProgressForWorkSpecId(String workSpecId);

    List<Data> getProgressForWorkSpecIds(List<String> workSpecIds);

    void insert(WorkProgress progress);
}
