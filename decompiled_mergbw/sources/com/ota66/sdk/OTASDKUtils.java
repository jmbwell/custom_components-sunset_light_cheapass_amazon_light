package com.ota66.sdk;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.ota66.sdk.ble.OTACallBack;
import com.ota66.sdk.firware.UpdateFirewareCallBack;
/* loaded from: classes4.dex */
public class OTASDKUtils {
    private String address;
    private String filePath;
    private UpdateFirewareCallBack firewareCallBack;
    private boolean isQuick;
    private a.b otaType;
    private OTAUtils otaUtils;
    private int STATUS = 0;
    private int START_OTA = 1;
    private int OTA_CONNECTING = 2;
    private int OTA_ING = 3;
    private int REBOOT = 4;
    private int START_RES = 5;
    private int RES_ING = 6;
    private int APP2OTA = 7;
    private OTACallBack otaCallBack = new b();

    /* loaded from: classes4.dex */
    private class b implements OTACallBack {
        private b() {
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onConnected(boolean z) {
            if (z) {
                OTASDKUtils.this.isQuick = OTAUtils.MTU_SIZE > 23;
                Log.e("TAG", "onConnected: STATUS:" + OTASDKUtils.this.STATUS + ",otaType:" + OTASDKUtils.this.otaType);
                if (OTASDKUtils.this.STATUS == 0) {
                    if (OTASDKUtils.this.otaType != a.b.OTA) {
                        if (OTASDKUtils.this.otaType != a.b.RESOURCE) {
                            if (OTASDKUtils.this.otaType == a.b.Security) {
                                OTASDKUtils oTASDKUtils = OTASDKUtils.this;
                                oTASDKUtils.STATUS = oTASDKUtils.RES_ING;
                                return;
                            }
                            return;
                        }
                        OTASDKUtils oTASDKUtils2 = OTASDKUtils.this;
                        oTASDKUtils2.STATUS = oTASDKUtils2.START_RES;
                        return;
                    }
                    OTASDKUtils oTASDKUtils3 = OTASDKUtils.this;
                    oTASDKUtils3.STATUS = oTASDKUtils3.START_OTA;
                } else if (OTASDKUtils.this.otaType != a.b.OTA || OTASDKUtils.this.STATUS != OTASDKUtils.this.START_OTA) {
                    if (OTASDKUtils.this.otaType != a.b.Security || OTASDKUtils.this.STATUS != OTASDKUtils.this.RES_ING) {
                        if (OTASDKUtils.this.otaType != a.b.RESOURCE || OTASDKUtils.this.STATUS != OTASDKUtils.this.START_RES) {
                            if (OTASDKUtils.this.STATUS != OTASDKUtils.this.OTA_CONNECTING) {
                                if (OTASDKUtils.this.STATUS == OTASDKUtils.this.APP2OTA) {
                                    Log.e("TAG", "onConnected: isQuick:" + OTASDKUtils.this.isQuick);
                                    Log.e("TAG", "onConnected: 222222222222222");
                                    OTASDKUtils.this.startOta();
                                    return;
                                }
                                Log.d("STATUS", "error:" + OTASDKUtils.this.STATUS);
                                return;
                            }
                            OTASDKUtils oTASDKUtils4 = OTASDKUtils.this;
                            oTASDKUtils4.STATUS = oTASDKUtils4.APP2OTA;
                            return;
                        }
                        OTASDKUtils.this.otaUtils.startResource();
                        return;
                    }
                    OTASDKUtils.this.otaUtils.startSecurity();
                } else {
                    OTASDKUtils.this.otaUtils.startOTA();
                }
            } else if (OTASDKUtils.this.STATUS != OTASDKUtils.this.START_OTA && OTASDKUtils.this.STATUS != OTASDKUtils.this.START_RES && OTASDKUtils.this.STATUS != OTASDKUtils.this.RES_ING) {
                if (OTASDKUtils.this.STATUS == OTASDKUtils.this.OTA_CONNECTING) {
                    OTASDKUtils.this.error(1001);
                } else if (OTASDKUtils.this.STATUS == OTASDKUtils.this.REBOOT) {
                    OTASDKUtils.this.success();
                } else if (OTASDKUtils.this.STATUS == OTASDKUtils.this.OTA_ING) {
                    OTASDKUtils.this.error(1001);
                } else {
                    OTASDKUtils.this.error(1006);
                }
            } else {
                Log.e("TAG", "onConnected: 断开连接，重新扫描");
                OTASDKUtils.this.otaUtils.starScan();
            }
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onDeviceSearch(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            if ((OTASDKUtils.this.STATUS == OTASDKUtils.this.START_OTA || OTASDKUtils.this.STATUS == OTASDKUtils.this.START_RES || OTASDKUtils.this.STATUS == OTASDKUtils.this.RES_ING) && bluetoothDevice.getAddress().equals(c.b.a(OTASDKUtils.this.address))) {
                OTASDKUtils.this.otaUtils.stopScan();
                OTASDKUtils.this.otaUtils.connectDevice(bluetoothDevice.getAddress());
                OTASDKUtils oTASDKUtils = OTASDKUtils.this;
                oTASDKUtils.STATUS = oTASDKUtils.OTA_CONNECTING;
            }
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onError(int i) {
            Log.d("onError", "error:" + i);
            OTASDKUtils.this.error(i);
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onOTA(boolean z) {
            if (z) {
                if (!OTASDKUtils.this.isQuick || Build.VERSION.SDK_INT < 26) {
                    OTASDKUtils.this.startOta();
                } else if (OTASDKUtils.this.otaUtils.setPHY()) {
                } else {
                    OTASDKUtils.this.startOta();
                }
            }
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onOTAFinish() {
            OTASDKUtils oTASDKUtils = OTASDKUtils.this;
            oTASDKUtils.STATUS = oTASDKUtils.REBOOT;
            OTASDKUtils.this.otaUtils.reBoot();
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onPhyUpdate() {
            OTASDKUtils.this.startOta();
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onProcess(float f) {
            OTASDKUtils.this.firewareCallBack.onProcess(f);
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onReboot() {
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onRebootSuccess() {
            OTASDKUtils.this.otaUtils.disConnectDevice();
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onResource(boolean z) {
            if (z) {
                if (!OTASDKUtils.this.isQuick || Build.VERSION.SDK_INT < 26) {
                    OTASDKUtils.this.startOta();
                } else if (OTASDKUtils.this.otaUtils.setPHY()) {
                } else {
                    OTASDKUtils.this.startOta();
                }
            }
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onResourceFinish() {
            OTASDKUtils oTASDKUtils = OTASDKUtils.this;
            oTASDKUtils.STATUS = oTASDKUtils.REBOOT;
            OTASDKUtils.this.otaUtils.reBoot();
        }

        @Override // com.ota66.sdk.ble.OTACallBack
        public void onStartSecurityData() {
            OTASDKUtils oTASDKUtils = OTASDKUtils.this;
            oTASDKUtils.STATUS = oTASDKUtils.OTA_ING;
            OTASDKUtils.this.otaUtils.updateFirmware(OTASDKUtils.this.filePath, OTASDKUtils.this.isQuick, a.b.Security);
        }
    }

    public OTASDKUtils(Context context, UpdateFirewareCallBack updateFirewareCallBack) {
        this.firewareCallBack = updateFirewareCallBack;
        this.otaUtils = new OTAUtils(context, this.otaCallBack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void error(int i) {
        initStatus();
        this.firewareCallBack.onError(i);
        this.otaUtils.close();
    }

    private void initStatus() {
        this.STATUS = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOta() {
        a.b bVar = this.otaType;
        if (bVar == a.b.OTA) {
            this.otaUtils.updateFirmware(this.filePath, this.isQuick);
            this.STATUS = this.OTA_ING;
        } else if (bVar == a.b.RESOURCE) {
            this.otaUtils.updateResource(this.filePath, this.isQuick);
            this.STATUS = this.RES_ING;
        } else if (bVar == a.b.Security) {
            this.otaUtils.startSecurity();
            this.STATUS = this.RES_ING;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void success() {
        initStatus();
        this.firewareCallBack.onUpdateComplete();
        this.otaUtils.close();
    }

    public void cancleOTA() {
        this.otaUtils.cancleOTA();
        initStatus();
    }

    public void setOtaKey(String str) {
        this.otaUtils.setOtaKey(str);
    }

    public void setOtaKeyCmd0x74(boolean z) {
        this.otaUtils.setOtaKeyCmd0x74(z);
    }

    public void setRetryTimes(int i) {
        OTAUtils oTAUtils = this.otaUtils;
        if (oTAUtils != null) {
            oTAUtils.setRetryTimes(i);
        }
    }

    public void updateFirware(String str, String str2) {
        this.address = str;
        this.filePath = str2;
        this.otaType = a.b.OTA;
        initStatus();
        this.otaUtils.connectDevice(str);
    }

    public void updateResource(String str, String str2) {
        this.address = str;
        this.filePath = str2;
        this.otaType = a.b.RESOURCE;
        initStatus();
        this.otaUtils.connectDevice(str);
    }

    public void updateSecurityFirware(String str, String str2) {
        this.address = str;
        this.filePath = str2;
        this.otaType = a.b.Security;
        initStatus();
        this.otaUtils.connectDevice(str);
    }
}
