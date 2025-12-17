package a;

import com.ota66.sdk.OTAUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f11a;

    /* renamed from: b  reason: collision with root package name */
    private String f12b;

    /* renamed from: c  reason: collision with root package name */
    private int f13c;
    private List d = new ArrayList();

    public c(String str, String str2, boolean z) {
        this.f11a = str;
        this.f12b = str2;
        this.f13c = str2.length() / 2;
        a(str2, z);
    }

    public String a() {
        return this.f11a;
    }

    public List b() {
        return this.d;
    }

    public String c() {
        return this.f12b;
    }

    public int d() {
        return this.f13c;
    }

    private void a(String str, boolean z) {
        int i = OTAUtils.MTU_SIZE - 3;
        ArrayList arrayList = null;
        while (true) {
            int i2 = 0;
            do {
                if (i2 == 0) {
                    arrayList = new ArrayList();
                }
                int i3 = i * 2;
                if (str.length() <= i3) {
                    arrayList.add(str);
                    this.d.add(arrayList);
                    return;
                }
                String substring = str.substring(0, i3);
                str = str.substring(i3, str.length());
                arrayList.add(substring);
                i2++;
            } while (arrayList.size() != 16);
            this.d.add(arrayList);
        }
    }
}
