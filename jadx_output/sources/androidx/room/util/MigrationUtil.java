package androidx.room.util;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.DatabaseConfiguration;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MigrationUtil.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0000\u001a$\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b*\u00020\u00072\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0000\u001a:\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b*\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¨\u0006\u0013"}, d2 = {"isMigrationRequired", "", "Landroidx/room/DatabaseConfiguration;", "fromVersion", "", "toVersion", "contains", "Landroidx/room/RoomDatabase$MigrationContainer;", "startVersion", "endVersion", "findMigrationPath", "", "Landroidx/room/migration/Migration;", "start", "end", "findUpMigrationPath", "result", "", "upgrade", "room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public final class MigrationUtil {
    public static final boolean isMigrationRequired(DatabaseConfiguration databaseConfiguration, int i, int i2) {
        Intrinsics.checkNotNullParameter(databaseConfiguration, "<this>");
        if (i <= i2 || !databaseConfiguration.allowDestructiveMigrationOnDowngrade) {
            Set<Integer> migrationNotRequiredFrom$room_runtime_release = databaseConfiguration.getMigrationNotRequiredFrom$room_runtime_release();
            if (databaseConfiguration.requireMigration) {
                return migrationNotRequiredFrom$room_runtime_release == null || !migrationNotRequiredFrom$room_runtime_release.contains(Integer.valueOf(i));
            }
            return false;
        }
        return false;
    }

    public static final boolean contains(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        Intrinsics.checkNotNullParameter(migrationContainer, "<this>");
        Map<Integer, Map<Integer, Migration>> migrations = migrationContainer.getMigrations();
        if (migrations.containsKey(Integer.valueOf(i))) {
            Map<Integer, Migration> map = migrations.get(Integer.valueOf(i));
            if (map == null) {
                map = MapsKt.emptyMap();
            }
            return map.containsKey(Integer.valueOf(i2));
        }
        return false;
    }

    public static final List<Migration> findMigrationPath(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        Intrinsics.checkNotNullParameter(migrationContainer, "<this>");
        if (i == i2) {
            return CollectionsKt.emptyList();
        }
        return findUpMigrationPath(migrationContainer, new ArrayList(), i2 > i, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
        return r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0009  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.util.List<androidx.room.migration.Migration> findUpMigrationPath(androidx.room.RoomDatabase.MigrationContainer r5, java.util.List<androidx.room.migration.Migration> r6, boolean r7, int r8, int r9) {
        /*
        L0:
            if (r7 == 0) goto L5
            if (r8 >= r9) goto L5b
            goto L7
        L5:
            if (r8 <= r9) goto L5b
        L7:
            if (r7 == 0) goto Le
            kotlin.Pair r0 = r5.getSortedDescendingNodes$room_runtime_release(r8)
            goto L12
        Le:
            kotlin.Pair r0 = r5.getSortedNodes$room_runtime_release(r8)
        L12:
            r1 = 0
            if (r0 != 0) goto L16
            return r1
        L16:
            java.lang.Object r2 = r0.component1()
            java.util.Map r2 = (java.util.Map) r2
            java.lang.Object r0 = r0.component2()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L26:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L53
            java.lang.Object r3 = r0.next()
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            if (r7 == 0) goto L3f
            int r4 = r8 + 1
            if (r4 > r3) goto L26
            if (r3 > r9) goto L26
            goto L43
        L3f:
            if (r9 > r3) goto L26
            if (r3 >= r8) goto L26
        L43:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r3)
            java.lang.Object r8 = r2.get(r8)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            r6.add(r8)
            r8 = 1
            goto L56
        L53:
            r0 = 0
            r3 = r8
            r8 = r0
        L56:
            if (r8 != 0) goto L59
            return r1
        L59:
            r8 = r3
            goto L0
        L5b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.MigrationUtil.findUpMigrationPath(androidx.room.RoomDatabase$MigrationContainer, java.util.List, boolean, int, int):java.util.List");
    }
}
