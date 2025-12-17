package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.util.Log;
import com.google.firebase.Timestamp$$ExternalSyntheticApiModelOutline0;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ColorResourcesLoaderCreator {
    private static final String TAG = "ColorResLoaderCreator";

    private ColorResourcesLoaderCreator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResourcesLoader create(Context context, Map<Integer, Integer> map) {
        FileDescriptor fileDescriptor;
        ResourcesProvider loadFromTable;
        try {
            byte[] create = ColorResourcesTableCreator.create(context, map);
            Log.i(TAG, "Table created, length: " + create.length);
            if (create.length == 0) {
                return null;
            }
            try {
                fileDescriptor = Os.memfd_create("temp.arsc", 0);
            } catch (Throwable th) {
                th = th;
                fileDescriptor = null;
            }
            try {
                if (fileDescriptor == null) {
                    Log.w(TAG, "Cannot create memory file descriptor.");
                    if (fileDescriptor != null) {
                        Os.close(fileDescriptor);
                    }
                    return null;
                }
                FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptor);
                fileOutputStream.write(create);
                ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
                Timestamp$$ExternalSyntheticApiModelOutline0.m$3();
                ResourcesLoader m643m = Timestamp$$ExternalSyntheticApiModelOutline0.m643m();
                loadFromTable = ResourcesProvider.loadFromTable(dup, null);
                m643m.addProvider(loadFromTable);
                if (dup != null) {
                    dup.close();
                }
                fileOutputStream.close();
                if (fileDescriptor != null) {
                    Os.close(fileDescriptor);
                }
                return m643m;
            } catch (Throwable th2) {
                th = th2;
                if (fileDescriptor != null) {
                    Os.close(fileDescriptor);
                }
                throw th;
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to create the ColorResourcesTableCreator.", e);
            return null;
        }
    }
}
