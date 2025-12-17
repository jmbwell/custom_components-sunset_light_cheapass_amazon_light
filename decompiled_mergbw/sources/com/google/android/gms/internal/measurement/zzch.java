package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes3.dex */
public final class zzch {
    private static final Method zza;
    private static final Method zzb;

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 6
            java.lang.String r2 = "JobSchedulerCompat"
            r3 = 0
            r4 = 24
            if (r0 < r4) goto L33
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r5 = "scheduleAsPackage"
            r6 = 4
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobInfo> r7 = android.app.job.JobInfo.class
            r8 = 0
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<java.lang.String> r7 = java.lang.String.class
            r8 = 1
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L28
            r9 = 2
            r6[r9] = r8     // Catch: java.lang.NoSuchMethodException -> L28
            r8 = 3
            r6[r8] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r5, r6)     // Catch: java.lang.NoSuchMethodException -> L28
            goto L34
        L28:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L33
            java.lang.String r0 = "No scheduleAsPackage method available, falling back to schedule"
            android.util.Log.e(r2, r0)
        L33:
            r0 = r3
        L34:
            com.google.android.gms.internal.measurement.zzch.zza = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r4) goto L4e
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r4 = "myUserId"
            java.lang.reflect.Method r3 = r0.getDeclaredMethod(r4, r3)     // Catch: java.lang.NoSuchMethodException -> L43
            goto L4e
        L43:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L4e
            java.lang.String r0 = "No myUserId method available"
            android.util.Log.e(r2, r0)
        L4e:
            com.google.android.gms.internal.measurement.zzch.zzb = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzch.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r5, android.app.job.JobInfo r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r7 = "jobscheduler"
            java.lang.Object r7 = r5.getSystemService(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.Object r7 = com.google.common.base.Preconditions.checkNotNull(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.lang.reflect.Method r8 = com.google.android.gms.internal.measurement.zzch.zza
            if (r8 == 0) goto L76
            java.lang.String r8 = "android.permission.UPDATE_DEVICE_STATS"
            int r5 = r5.checkSelfPermission(r8)
            if (r5 == 0) goto L1b
            goto L76
        L1b:
            java.lang.reflect.Method r5 = com.google.android.gms.internal.measurement.zzch.zzb
            r8 = 0
            if (r5 == 0) goto L41
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            r1 = 0
            java.lang.Object r5 = r5.invoke(r0, r1)     // Catch: java.lang.reflect.InvocationTargetException -> L30 java.lang.IllegalAccessException -> L32
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L30 java.lang.IllegalAccessException -> L32
            if (r5 == 0) goto L41
            int r5 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L30 java.lang.IllegalAccessException -> L32
            goto L42
        L30:
            r5 = move-exception
            goto L33
        L32:
            r5 = move-exception
        L33:
            r0 = 6
            java.lang.String r1 = "JobSchedulerCompat"
            boolean r0 = android.util.Log.isLoggable(r1, r0)
            if (r0 == 0) goto L41
            java.lang.String r0 = "myUserId invocation illegal"
            android.util.Log.e(r1, r0, r5)
        L41:
            r5 = r8
        L42:
            java.lang.String r0 = "UploadAlarm"
            java.lang.reflect.Method r1 = com.google.android.gms.internal.measurement.zzch.zza
            if (r1 == 0) goto L71
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            r2[r8] = r6     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            java.lang.String r3 = "com.google.android.gms"
            r4 = 1
            r2[r4] = r3     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            r3 = 2
            r2[r3] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            r5 = 3
            r2[r5] = r0     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            java.lang.Object r5 = r1.invoke(r7, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            if (r5 == 0) goto L75
            int r8 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L69 java.lang.IllegalAccessException -> L6b
            goto L75
        L69:
            r5 = move-exception
            goto L6c
        L6b:
            r5 = move-exception
        L6c:
            java.lang.String r8 = "error calling scheduleAsPackage"
            android.util.Log.e(r0, r8, r5)
        L71:
            int r8 = r7.schedule(r6)
        L75:
            return r8
        L76:
            int r5 = r7.schedule(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzch.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
