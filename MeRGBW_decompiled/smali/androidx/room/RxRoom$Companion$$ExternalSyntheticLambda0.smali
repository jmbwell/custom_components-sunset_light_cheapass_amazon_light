.class public final synthetic Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Landroidx/room/RoomDatabase;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/room/RoomDatabase;

    iget-object v1, p0, Landroidx/room/RxRoom$Companion$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/room/RxRoom$Companion;->$r8$lambda$5F8J3Yy0YO43UwEfffWjQAdyP-8(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
