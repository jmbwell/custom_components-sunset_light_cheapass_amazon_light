package androidx.room.coroutines;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.sqlite.SQLiteDriver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ConnectionPool.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a(\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0000¨\u0006\n"}, d2 = {"newSingleConnectionPool", "Landroidx/room/coroutines/ConnectionPool;", "driver", "Landroidx/sqlite/SQLiteDriver;", "fileName", "", "newConnectionPool", "maxNumOfReaders", "", "maxNumOfWriters", "room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public final class ConnectionPoolKt {
    public static final ConnectionPool newSingleConnectionPool(SQLiteDriver sQLiteDriver, String str) {
        Intrinsics.checkNotNullParameter(sQLiteDriver, "driver");
        Intrinsics.checkNotNullParameter(str, "fileName");
        return new ConnectionPoolImpl(sQLiteDriver, str);
    }

    public static final ConnectionPool newConnectionPool(SQLiteDriver sQLiteDriver, String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(sQLiteDriver, "driver");
        Intrinsics.checkNotNullParameter(str, "fileName");
        return new ConnectionPoolImpl(sQLiteDriver, str, i, i2);
    }
}
