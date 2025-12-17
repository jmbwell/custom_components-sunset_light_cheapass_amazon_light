package com.mergbw.core.ble;

import com.clj.fastble.data.BleDevice;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes4.dex */
public class SendCommandQueue {
    private final BlockingQueue<CommandData> dataQueue = new LinkedBlockingQueue(50);
    private boolean runSend = true;
    private int mtu = 20;
    private boolean canSendAudio = true;

    public SendCommandQueue() {
        new sendThread().start();
    }

    /* loaded from: classes4.dex */
    private class sendThread extends Thread {
        private sendThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (SendCommandQueue.this.runSend) {
                CommandData take = SendCommandQueue.this.take();
                if (take != null) {
                    try {
                        SendCommandQueue.this.canSendAudio = false;
                        Thread.sleep(100L);
                        RGBDeviceManager.getInstance().sendData(take.getBleDevice(), take.getData());
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
                SendCommandQueue.this.canSendAudio = true;
            }
        }
    }

    public void put(CommandData commandData) {
        try {
            this.dataQueue.put(commandData);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public CommandData take() {
        try {
            return this.dataQueue.take();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void sendAudioData(BleDevice bleDevice, byte[] data) {
        if (this.canSendAudio) {
            RGBDeviceManager.getInstance().sendData(bleDevice, data);
        }
    }

    public int getSize() {
        return this.dataQueue.size();
    }

    public synchronized void clear() {
        this.dataQueue.clear();
    }

    public void stop() {
        this.runSend = false;
    }

    public int getMtu() {
        return this.mtu;
    }

    public void setMtu(int mtu) {
        this.mtu = mtu;
    }
}
