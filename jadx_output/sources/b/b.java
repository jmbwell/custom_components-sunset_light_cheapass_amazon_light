package b;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.Context;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private a f12a;

    /* renamed from: b  reason: collision with root package name */
    private C0009b f13b;

    /* renamed from: c  reason: collision with root package name */
    private c f14c;
    private Context d;

    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    class a implements BluetoothAdapter.LeScanCallback {
        a() {
        }

        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            if (b.this.f14c != null) {
                b.this.f14c.onDeviceSearch(bluetoothDevice, i, bArr);
                return;
            }
            throw new RuntimeException("otaUtilsCallBack is null");
        }
    }

    /* renamed from: b.b$b  reason: collision with other inner class name */
    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    class C0009b extends ScanCallback {
        C0009b() {
        }

        @Override // android.bluetooth.le.ScanCallback
        public void onScanResult(int i, ScanResult scanResult) {
            if (b.this.f14c != null) {
                b.this.f14c.onDeviceSearch(scanResult.getDevice(), scanResult.getRssi(), scanResult.getScanRecord().getBytes());
                return;
            }
            throw new RuntimeException("otaUtilsCallBack is null");
        }
    }

    public b(Context context, c cVar) {
        this.d = context;
        this.f14c = cVar;
    }

    public void b() {
        BluetoothAdapter adapter = ((BluetoothManager) this.d.getApplicationContext().getSystemService("bluetooth")).getAdapter();
        if (adapter == null || !adapter.isEnabled()) {
            return;
        }
        if (this.f12a == null && this.f13b == null) {
            return;
        }
        adapter.getBluetoothLeScanner().stopScan(this.f13b);
    }

    public void a() {
        BluetoothAdapter adapter = ((BluetoothManager) this.d.getApplicationContext().getSystemService("bluetooth")).getAdapter();
        this.f13b = new C0009b();
        adapter.getBluetoothLeScanner().startScan(this.f13b);
    }
}
