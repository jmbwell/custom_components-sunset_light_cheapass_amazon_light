package a;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f0a;

    /* renamed from: b  reason: collision with root package name */
    private String f1b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList f2c = new ArrayList();

    public a(String str, boolean z) {
        this.f1b = str;
        a(str, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0099, code lost:
        r13.f2c.add(new a.c(r3, r0.toString(), r15));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r14, boolean r15) {
        /*
            r13 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.io.File r1 = new java.io.File
            r1.<init>(r14)
            java.io.BufferedReader r14 = new java.io.BufferedReader     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r2.<init>(r1)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r14.<init>(r2)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r1 = 0
            java.lang.String r2 = ""
            r4 = r1
            r3 = r2
        L19:
            java.lang.String r5 = r14.readLine()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            if (r5 == 0) goto Lb1
            java.lang.String r5 = r5.trim()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r6 = 3
            r7 = 1
            java.lang.String r8 = r5.substring(r7, r6)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r9 = 16
            int r8 = java.lang.Integer.parseInt(r8, r9)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r9 = 7
            r10 = 9
            java.lang.String r11 = r5.substring(r9, r10)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r12 = "04"
            boolean r11 = r11.equals(r12)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            if (r11 == 0) goto L5f
            int r4 = r0.length()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            if (r4 <= 0) goto L52
            java.util.ArrayList r4 = r13.f2c     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            a.c r6 = new a.c     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r6.<init>(r3, r0, r15)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4.add(r6)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
        L52:
            r0 = 13
            java.lang.String r3 = r5.substring(r10, r0)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r0.<init>(r2)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4 = r1
            goto L19
        L5f:
            java.lang.String r11 = r5.substring(r9, r10)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r12 = "05"
            boolean r11 = r11.equals(r12)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            if (r11 != 0) goto L99
            java.lang.String r11 = r5.substring(r9, r10)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r12 = "01"
            boolean r11 = r11.equals(r12)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            if (r11 == 0) goto L78
            goto L99
        L78:
            if (r4 != 0) goto L8e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4.<init>()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4.append(r3)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r3 = r5.substring(r6, r9)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4.append(r3)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r3 = r4.toString()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r4 = r7
        L8e:
            int r8 = r8 * 2
            int r8 = r8 + r10
            java.lang.String r5 = r5.substring(r10, r8)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r0.append(r5)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            goto L19
        L99:
            java.util.ArrayList r14 = r13.f2c     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            a.c r1 = new a.c     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r1.<init>(r3, r0, r15)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            r14.add(r1)     // Catch: java.io.IOException -> La8 java.io.FileNotFoundException -> Lad
            goto Lb1
        La8:
            r14 = 101(0x65, float:1.42E-43)
            r13.f0a = r14
            goto Lb1
        Lad:
            r14 = 100
            r13.f0a = r14
        Lb1:
            r14 = 200(0xc8, float:2.8E-43)
            r13.f0a = r14
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a(java.lang.String, boolean):void");
    }

    public long b() {
        Iterator it = this.f2c.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += ((c) it.next()).d();
        }
        return j;
    }

    public ArrayList c() {
        return this.f2c;
    }

    public String d() {
        return this.f1b;
    }

    public int a() {
        return this.f0a;
    }
}
