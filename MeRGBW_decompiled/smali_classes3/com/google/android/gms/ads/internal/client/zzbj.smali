.class public abstract Lcom/google/android/gms/ads/internal/client/zzbj;
.super Lcom/google/android/gms/internal/ads/zzaya;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzbk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaya;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzdi(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzi()V

    goto :goto_0

    .line 2
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayb;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayb;->zzh(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzd(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzj()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzh()V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzg()V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzf()V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayb;->zzh(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzc(I)V

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzbj;->zzb()V

    .line 13
    :goto_0
    :pswitch_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
