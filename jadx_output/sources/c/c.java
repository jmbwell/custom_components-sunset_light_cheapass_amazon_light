package c;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    byte[] f17a;

    /* renamed from: b  reason: collision with root package name */
    int f18b = 0;

    public c(int i) {
        this.f17a = null;
        this.f17a = new byte[i];
    }

    public c a(byte b2) {
        return a(this.f18b, b2);
    }

    public String toString() {
        return d.a(this.f17a);
    }

    void a(int i) {
        byte[] bArr = this.f17a;
        if (i > bArr.length) {
            int length = (bArr.length << 1) + 2;
            if (i <= length) {
                i = length;
            }
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, this.f18b);
            this.f17a = bArr2;
        }
    }

    public c a(int i, byte[] bArr, int i2) {
        int i3 = this.f18b;
        if (i <= i3 && i >= 0) {
            a(i3 + i2);
            byte[] bArr2 = this.f17a;
            System.arraycopy(bArr2, i, bArr2, i + i2, this.f18b - i);
            System.arraycopy(bArr, 0, this.f17a, i, i2);
            this.f18b += i2;
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    public c a(int i, byte b2) {
        return a(i, new byte[]{b2}, 1);
    }

    public byte[] a() {
        int i = this.f18b;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f17a, 0, bArr, 0, i);
        return bArr;
    }
}
