package c;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    byte[] f33a;

    /* renamed from: b  reason: collision with root package name */
    int f34b = 0;

    public c(int i) {
        this.f33a = null;
        this.f33a = new byte[i];
    }

    public c a(byte b2) {
        return a(this.f34b, b2);
    }

    public String toString() {
        return d.a(this.f33a);
    }

    void a(int i) {
        byte[] bArr = this.f33a;
        if (i > bArr.length) {
            int length = (bArr.length << 1) + 2;
            if (i <= length) {
                i = length;
            }
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, this.f34b);
            this.f33a = bArr2;
        }
    }

    public c a(int i, byte[] bArr, int i2) {
        int i3 = this.f34b;
        if (i <= i3 && i >= 0) {
            a(i3 + i2);
            byte[] bArr2 = this.f33a;
            System.arraycopy(bArr2, i, bArr2, i + i2, this.f34b - i);
            System.arraycopy(bArr, 0, this.f33a, i, i2);
            this.f34b += i2;
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    public c a(int i, byte b2) {
        return a(i, new byte[]{b2}, 1);
    }

    public byte[] a() {
        int i = this.f34b;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f33a, 0, bArr, 0, i);
        return bArr;
    }
}
