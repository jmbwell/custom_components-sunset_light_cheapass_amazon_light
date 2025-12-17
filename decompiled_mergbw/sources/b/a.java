package b;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.util.Log;
import androidx.core.view.PointerIconCompat;
import c.d;
import com.ota66.sdk.OTAUtils;
import java.util.List;
/* loaded from: classes.dex */
public class a extends BluetoothGattCallback {
    private static final String w = "a";

    /* renamed from: a  reason: collision with root package name */
    private c f25a;

    /* renamed from: b  reason: collision with root package name */
    private a.a f26b;

    /* renamed from: c  reason: collision with root package name */
    private a.b f27c;
    private List h;
    private boolean i;
    private String j;
    private float k;
    private float l;
    private int n;
    private int o;
    private boolean p;
    private boolean s;
    private String t;
    private String u;
    public String v;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private long g = 0;
    private int m = 3;
    private int q = -1;
    private int r = -1;

    public void a(c cVar) {
        this.f25a = cVar;
    }

    public void b() {
        this.p = true;
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        String uuid = bluetoothGattCharacteristic.getUuid().toString();
        this.j = d.b(bluetoothGattCharacteristic.getValue());
        if (uuid.equals("5833ff03-9b8b-5191-6142-22a4536ef123")) {
            String str = w;
            Log.d(str, "收到特征值:" + d.b(bluetoothGattCharacteristic.getValue()));
            this.i = true;
            if ("0087".equals(this.j)) {
                if (this.o > 0) {
                    this.o = 0;
                }
                int i = this.e + 1;
                this.e = i;
                this.f = 0;
                if (i < ((a.c) this.f26b.c().get(this.d)).b().size()) {
                    List list = (List) ((a.c) this.f26b.c().get(this.d)).b().get(this.e);
                    this.h = list;
                    a(bluetoothGatt, (String) list.get(this.f));
                }
            } else if ("0085".equals(this.j)) {
                int i2 = this.d + 1;
                this.d = i2;
                this.e = 0;
                if (i2 < this.f26b.c().size()) {
                    a.b bVar = this.f27c;
                    if (bVar == a.b.OTA || bVar == a.b.Security) {
                        a.c cVar = (a.c) this.f26b.c().get(this.d - 1);
                        if (285212672 > Long.parseLong(cVar.a(), 16) || Long.parseLong(cVar.a(), 16) > 285736959) {
                            if (this.f26b.d().endsWith("hexe16")) {
                                this.g = this.g + cVar.d() + 4;
                            } else {
                                this.g = this.g + cVar.d() + 8;
                            }
                        }
                    }
                    a(bluetoothGatt, this.f26b, this.d, this.g);
                }
            } else if ("0083".equals(this.j)) {
                a.b bVar2 = this.f27c;
                if (bVar2 != a.b.OTA && bVar2 != a.b.Security) {
                    if (bVar2 == a.b.RESOURCE) {
                        this.f25a.onResourceFinish();
                        return;
                    }
                    return;
                }
                this.f25a.onOTAFinish();
            } else if ("008a".equals(this.j.toLowerCase())) {
                this.f25a.a();
            } else if ("00".equals(this.j)) {
                Log.e(str, "========111111");
            } else if ("6887".equals(this.j)) {
                if (this.p) {
                    return;
                }
                a(bluetoothGatt, 1005);
            } else if ("0081".equals(this.j) || "0084".equals(this.j) || "0089".equals(this.j)) {
            } else {
                if (this.j.length() == 34 && this.j.startsWith("71")) {
                    this.u = this.j.substring(2);
                } else if (this.j.length() == 34 && this.j.startsWith("72")) {
                } else {
                    if (this.j.length() == 34 && this.j.startsWith("73")) {
                        return;
                    }
                    if (this.j.length() == 34 && this.j.startsWith("8B")) {
                        return;
                    }
                    if (this.j.length() == 34 && this.j.startsWith("8C")) {
                        return;
                    }
                    if (this.j.length() == 34 && this.j.startsWith("8D")) {
                        return;
                    }
                    this.f25a.onError(1005);
                    Log.d(str, "error:" + this.j);
                }
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        String str = w;
        Log.e(str, "onCharacteristicWrite: 数据发送成功：" + this.j);
        if (bluetoothGattCharacteristic.getUuid().toString().equals("5833ff02-9b8b-5191-6142-22a4536ef123")) {
            if ("0081".equals(this.j) && this.i) {
                a.b bVar = this.f27c;
                if (bVar != a.b.OTA && bVar != a.b.Security) {
                    if (bVar == a.b.RESOURCE) {
                        a(bluetoothGatt, this.f26b);
                    }
                } else {
                    a(bluetoothGatt, this.f26b, this.d, this.g);
                    this.e = 0;
                }
            } else if ("0084".equals(this.j) && this.i) {
                this.f = 0;
                List list = (List) ((a.c) this.f26b.c().get(this.d)).b().get(this.e);
                this.h = list;
                a(bluetoothGatt, (String) list.get(this.f));
            } else if ("0089".equals(this.j)) {
                a(bluetoothGatt, this.f26b, this.d, this.g);
                this.e = 0;
            }
            String str2 = this.j;
            if (str2 != null && str2.length() == 34 && this.j.startsWith("71")) {
                this.u = this.j.substring(2);
                c.b.a(bluetoothGatt, "06" + this.t, true);
            } else {
                String str3 = this.j;
                if (str3 != null && str3.length() == 34 && this.j.startsWith("72")) {
                    String a2 = c.a.a(this.u, this.v);
                    Log.e(str, "onCharacteristicWrite: " + a2 + " :" + this.j.substring(2));
                    if (this.j.substring(2).equals(a2)) {
                        String b2 = c.a.b(c.a.b(a2, this.t), this.v);
                        c.b.a(bluetoothGatt, "07" + b2, true);
                    } else {
                        Log.e("OTAUtils", "responseSecurity: AES加密验证失败");
                    }
                } else {
                    String str4 = this.j;
                    if (str4 != null && str4.length() == 34 && this.j.startsWith("73")) {
                        c.b.a(bluetoothGatt, "0102", true);
                        this.j = "0102";
                    } else {
                        String str5 = this.j;
                        if (str5 != null && str5.length() == 34 && this.j.startsWith("8B")) {
                            this.u = this.j.substring(2);
                            c.b.a(bluetoothGatt, "07" + this.t, true);
                        } else {
                            String str6 = this.j;
                            if (str6 != null && str6.length() == 34 && this.j.startsWith("8C")) {
                                String a3 = c.a.a(this.u, this.v);
                                if (this.j.substring(2).equals(a3)) {
                                    String b3 = c.a.b(c.a.b(a3, this.t), this.v);
                                    c.b.a(bluetoothGatt, "08" + b3, true);
                                } else {
                                    Log.e("OTAUtils", "responseSecurity: AES加密验证失败");
                                }
                            } else {
                                String str7 = this.j;
                                if (str7 != null && str7.length() == 34 && this.j.startsWith("8D")) {
                                    this.f25a.onStartSecurityData();
                                } else {
                                    String str8 = this.j;
                                    if (str8 != null && str8.equals("0102")) {
                                        bluetoothGatt.disconnect();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if ("0102".equals(d.b(bluetoothGattCharacteristic.getValue())) || "0103".equals(d.b(bluetoothGattCharacteristic.getValue()))) {
                Log.d(str, "start ota or resource");
            }
            this.i = false;
        } else if (bluetoothGattCharacteristic.getUuid().toString().equals("5833ff04-9b8b-5191-6142-22a4536ef123")) {
            if (i == 0) {
                if (this.n > 0) {
                    this.n = 0;
                }
                if (this.q != this.d || this.r != this.e) {
                    if (this.s) {
                        this.s = false;
                        this.q = -1;
                        this.r = -1;
                    }
                    float length = this.l + bluetoothGattCharacteristic.getValue().length;
                    this.l = length;
                    this.f25a.onProcess((length * 100.0f) / this.k);
                }
                int i2 = this.f + 1;
                this.f = i2;
                if (i2 < this.h.size()) {
                    a(bluetoothGatt, (String) this.h.get(this.f));
                    return;
                }
                return;
            }
            b(bluetoothGatt, 1004);
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (i2 == 2) {
            Log.e(w, "onConnectionStateChange:连接成功 ");
            bluetoothGatt.requestMtu(512);
        } else if (i2 == 0) {
            Log.e(w, "onConnectionStateChange:断开连接 ");
            if (bluetoothGatt != null) {
                bluetoothGatt.close();
            }
            this.f25a.a(false);
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        if ("00002902-0000-1000-8000-00805f9b34fb".equals(bluetoothGattDescriptor.getUuid().toString().toLowerCase())) {
            if (i == 0) {
                this.f25a.a(true);
            } else {
                bluetoothGatt.disconnect();
            }
        }
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
        if (i2 == 0) {
            OTAUtils.MTU_SIZE = i;
        } else {
            OTAUtils.MTU_SIZE = 23;
        }
        bluetoothGatt.discoverServices();
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onPhyUpdate(BluetoothGatt bluetoothGatt, int i, int i2, int i3) {
        this.f25a.a(bluetoothGatt, i, i2, i3);
    }

    @Override // android.bluetooth.BluetoothGattCallback
    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        boolean z;
        if (i == 0) {
            String str = w;
            Log.d(str, "onServicesDiscovered: success");
            if (c.b.a(bluetoothGatt)) {
                Log.e(str, "onServicesDiscovered: 连接OTA模式");
                z = c.b.b(bluetoothGatt);
                this.f25a.a(true);
            } else {
                boolean b2 = c.b.b(bluetoothGatt);
                Log.e(str, "onServicesDiscovered: 首页连接应用模式");
                if (b2) {
                    this.f25a.a(true);
                } else {
                    Log.e(str, "开启通知属性异常");
                }
                z = b2;
            }
            if (z) {
                return;
            }
            bluetoothGatt.disconnect();
            return;
        }
        bluetoothGatt.disconnect();
    }

    private void b(BluetoothGatt bluetoothGatt, int i) {
        Log.d(w, "retryCmd: ");
        if (this.n < this.m) {
            a(bluetoothGatt, (String) this.h.get(this.f));
            this.n++;
            return;
        }
        this.f25a.onError(i);
    }

    public void a(a.a aVar, a.b bVar) {
        this.f26b = aVar;
        this.f27c = bVar;
        this.k = (float) aVar.b();
        a();
    }

    public void a(int i) {
        this.m = i;
    }

    private void a() {
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0L;
        this.h = null;
        this.l = 0.0f;
        this.p = false;
    }

    private void a(BluetoothGatt bluetoothGatt, String str) {
        if (this.p || c.b.a(bluetoothGatt, str)) {
            return;
        }
        this.f25a.onError(PointerIconCompat.TYPE_HAND);
    }

    private void a(BluetoothGatt bluetoothGatt, a.a aVar, int i, long j) {
        if (this.p) {
            return;
        }
        a.c cVar = (a.c) aVar.c().get(i);
        if (285212672 <= Long.parseLong(cVar.a(), 16) && Long.parseLong(cVar.a(), 16) <= 285736959) {
            j = Long.parseLong(cVar.a(), 16);
        }
        if (this.f27c == a.b.RESOURCE) {
            j = 0;
            this.g = 0L;
        }
        if (c.b.a(bluetoothGatt, aVar, i, j)) {
            return;
        }
        this.f25a.onError(1003);
    }

    private void a(BluetoothGatt bluetoothGatt, a.a aVar) {
        if (this.p || c.b.a(bluetoothGatt, aVar)) {
            return;
        }
        this.f25a.onError(1003);
    }

    public void a(BluetoothGatt bluetoothGatt) {
        String a2 = c.b.a();
        this.t = a2;
        String b2 = c.a.b(a2, this.v);
        if (c.b.a(bluetoothGatt)) {
            c.b.a(bluetoothGatt, "06" + b2, true);
            return;
        }
        c.b.a(bluetoothGatt, "05" + b2, true);
    }

    private void a(BluetoothGatt bluetoothGatt, int i) {
        Log.d(w, "retry block:");
        if (this.o < this.m) {
            this.r = this.e;
            this.q = this.d;
            this.s = true;
            this.f = 0;
            List list = (List) ((a.c) this.f26b.c().get(this.d)).b().get(this.e);
            this.h = list;
            a(bluetoothGatt, (String) list.get(this.f));
            this.o++;
            return;
        }
        this.f25a.onError(i);
    }
}
