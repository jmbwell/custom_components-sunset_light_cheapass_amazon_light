package b;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface c {
    void a();

    void a(BluetoothGatt bluetoothGatt, int i, int i2, int i3);

    void a(boolean z);

    void onDeviceSearch(BluetoothDevice bluetoothDevice, int i, byte[] bArr);

    void onError(int i);

    void onOTAFinish();

    void onProcess(float f);

    void onResourceFinish();

    void onStartSecurityData();
}
