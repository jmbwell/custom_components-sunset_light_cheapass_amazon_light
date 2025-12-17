package com.mergbw.android.task;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.mergbw.android.R;
import com.mergbw.android.UserinfoManage;
import com.mergbw.core.utils.MeRGBWLog;
import com.ota66.sdk.OTAUtils$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class AudioService extends Service {
    private AudioManager.OnAudioFocusChangeListener afChangeListener;
    private AudioManager audioManager;
    private MediaPlayer mMediaPlayer;
    private final Map<String, IAudioCallback> mListeners = new HashMap();
    private boolean isUserPause = false;
    private final BroadcastReceiver TimeReceiver = new BroadcastReceiver() { // from class: com.mergbw.android.task.AudioService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            MeRGBWLog.i("AudioService onReceive：" + action);
            if (action != null) {
                if (action.equals("android.intent.action.TIME_TICK") || action.equals("android.intent.action.TIME_SET")) {
                    AudioService.this.checkWhiteNoiseTimer();
                }
            }
        }
    };

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new MessageBinder();
    }

    /* loaded from: classes4.dex */
    public class MessageBinder extends Binder {
        public MessageBinder() {
        }

        public AudioService getService() {
            return AudioService.this;
        }
    }

    public void addCallBack(String str, IAudioCallback iAudioCallback) {
        this.mListeners.put(str, iAudioCallback);
    }

    public void removeCallBack(String str) {
        this.mListeners.remove(str);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mMediaPlayer = mediaPlayer;
        mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mergbw.android.task.AudioService$$ExternalSyntheticLambda4
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer2) {
                AudioService.this.m734lambda$onCreate$0$commergbwandroidtaskAudioService(mediaPlayer2);
            }
        });
        startForeground(1, createNotification());
        this.audioManager = (AudioManager) getSystemService("audio");
        this.afChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.mergbw.android.task.AudioService$$ExternalSyntheticLambda5
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                AudioService.this.m735lambda$onCreate$1$commergbwandroidtaskAudioService(i);
            }
        };
        registerTimeTick();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$com-mergbw-android-task-AudioService  reason: not valid java name */
    public /* synthetic */ void m734lambda$onCreate$0$commergbwandroidtaskAudioService(MediaPlayer mediaPlayer) {
        registerAudioFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$1$com-mergbw-android-task-AudioService  reason: not valid java name */
    public /* synthetic */ void m735lambda$onCreate$1$commergbwandroidtaskAudioService(int i) {
        MediaPlayer mediaPlayer;
        MeRGBWLog.i("OnAudioFocusChangeListener focusChange: " + i);
        if (i == -2 || i == -1) {
            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
            if (mediaPlayer2 == null || !mediaPlayer2.isPlaying()) {
                return;
            }
            this.isUserPause = false;
            this.mMediaPlayer.pause();
            for (IAudioCallback iAudioCallback : this.mListeners.values()) {
                iAudioCallback.onPlayResult(false);
            }
        } else if (i == 1 && (mediaPlayer = this.mMediaPlayer) != null && !mediaPlayer.isPlaying() && !this.isUserPause) {
            this.mMediaPlayer.start();
            for (IAudioCallback iAudioCallback2 : this.mListeners.values()) {
                iAudioCallback2.onPlayResult(true);
            }
        }
    }

    public void startPlay(Context context, int i) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.reset();
                this.mMediaPlayer.setDataSource(context.getResources().openRawResourceFd(i));
                this.mMediaPlayer.setAudioStreamType(3);
                this.mMediaPlayer.setLooping(true);
                this.mMediaPlayer.prepareAsync();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void pausePlay() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.isUserPause = true;
        this.mMediaPlayer.pause();
    }

    public void resumePlay() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || mediaPlayer.isPlaying()) {
            return;
        }
        registerAudioFocus();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.audioManager.abandonAudioFocus(this.afChangeListener);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mMediaPlayer.release();
        }
        unregisterReceiver(this.TimeReceiver);
    }

    private Notification createNotification() {
        if (Build.VERSION.SDK_INT >= 26) {
            OTAUtils$$ExternalSyntheticApiModelOutline0.m();
            NotificationChannel m = OTAUtils$$ExternalSyntheticApiModelOutline0.m("AudioPlayerChannel", getString(R.string.app_name), 2);
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(m);
            }
        }
        return new NotificationCompat.Builder(this, "AudioPlayerChannel").setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.playing_white_noise)).setSmallIcon(R.mipmap.ic_logo).setPriority(-1).build();
    }

    private void registerAudioFocus() {
        int requestAudioFocus = this.audioManager.requestAudioFocus(this.afChangeListener, 3, 1);
        MeRGBWLog.i("requestAudioFocus result: " + requestAudioFocus);
        if (requestAudioFocus == 1) {
            this.mMediaPlayer.start();
        }
    }

    private void registerTimeTick() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        registerReceiver(this.TimeReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkWhiteNoiseTimer() {
        if (UserinfoManage.getInstance().isSetWhiteNoiseTimer()) {
            Calendar calendar = Calendar.getInstance();
            if (calendar.get(11) == UserinfoManage.getInstance().getWhiteNoiseOffTimeHour() && calendar.get(12) == UserinfoManage.getInstance().getWhiteNoiseOffTimeMin()) {
                pausePlay();
                for (IAudioCallback iAudioCallback : this.mListeners.values()) {
                    iAudioCallback.onPlayResult(false);
                }
            }
        }
    }
}
