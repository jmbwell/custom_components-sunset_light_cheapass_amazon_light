.class Lcom/clj/fastble/bluetooth/BleBluetooth$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/BleBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .line 419
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 421
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 422
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 425
    instance-of v1, v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    if-eqz v1, :cond_0

    .line 426
    check-cast v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 427
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleNotifyCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleNotifyCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x13

    .line 431
    iput v3, v2, Landroid/os/Message;->what:I

    .line 432
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string v3, "notify_value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 435
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 443
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 446
    instance-of v1, v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    if-eqz v1, :cond_2

    .line 447
    check-cast v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 448
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleIndicateCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleIndicateCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x23

    .line 452
    iput v3, v2, Landroid/os/Message;->what:I

    .line 453
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 455
    const-string v3, "indicate_value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 456
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 457
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 542
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1300(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 543
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 546
    instance-of v1, v0, Lcom/clj/fastble/callback/BleReadCallback;

    if-eqz v1, :cond_0

    .line 547
    check-cast v0, Lcom/clj/fastble/callback/BleReadCallback;

    .line 548
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleReadCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleReadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x42

    .line 552
    iput v3, v2, Landroid/os/Message;->what:I

    .line 553
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    const-string v3, "read_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string v3, "read_value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 557
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 558
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5

    .line 513
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 515
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1200(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 516
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 519
    instance-of v1, v0, Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Lcom/clj/fastble/callback/BleWriteCallback;

    .line 521
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleWriteCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleWriteCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x32

    .line 525
    iput v3, v2, Landroid/os/Message;->what:I

    .line 526
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 528
    const-string v3, "write_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v3, "write_value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 530
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 531
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothGattCallback\uff1aonConnectionStateChange \nstatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nnewState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 370
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->removeMessages(I)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    .line 374
    iput p2, p1, Landroid/os/Message;->what:I

    .line 375
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 378
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    move-result-object p3

    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    if-ne p3, v0, :cond_1

    .line 379
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p3, 0x1

    .line 380
    iput p3, p1, Landroid/os/Message;->what:I

    .line 381
    new-instance p3, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {p3, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 384
    :cond_1
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    move-result-object p3

    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    if-ne p3, v0, :cond_2

    .line 385
    iget-object p3, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p3

    invoke-virtual {p3}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 386
    iput p1, p3, Landroid/os/Message;->what:I

    .line 387
    new-instance p1, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {p1, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    .line 388
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$900(Lcom/clj/fastble/bluetooth/BleBluetooth;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;->setActive(Z)V

    .line 389
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 468
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 469
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 472
    instance-of v1, v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Lcom/clj/fastble/callback/BleNotifyCallback;

    .line 474
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleNotifyCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleNotifyCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x12

    .line 478
    iput v3, v2, Landroid/os/Message;->what:I

    .line 479
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    const-string v3, "notify_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 483
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 489
    :cond_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 490
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 493
    instance-of v1, v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    if-eqz v1, :cond_2

    .line 494
    check-cast v0, Lcom/clj/fastble/callback/BleIndicateCallback;

    .line 495
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleIndicateCallback;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v0}, Lcom/clj/fastble/callback/BleIndicateCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x22

    .line 499
    iput v3, v2, Landroid/os/Message;->what:I

    .line 500
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 502
    const-string v3, "indicate_status"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 588
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/callback/BleMtuChangedCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x62

    .line 592
    iput v1, v0, Landroid/os/Message;->what:I

    .line 593
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 595
    const-string v2, "mtu_status"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    const-string p3, "mtu_value"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 598
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 567
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 569
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/callback/BleRssiCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x52

    .line 573
    iput v1, v0, Landroid/os/Message;->what:I

    .line 574
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 576
    const-string v2, "rssi_status"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string p3, "rssi_value"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 579
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 397
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothGattCallback\uff1aonServicesDiscovered \nstatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {v0, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_0

    .line 405
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    .line 406
    iput v0, p1, Landroid/os/Message;->what:I

    .line 407
    new-instance v0, Lcom/clj/fastble/data/BleConnectStateParameter;

    invoke-direct {v0, p2}, Lcom/clj/fastble/data/BleConnectStateParameter;-><init>(I)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x5

    .line 412
    iput p2, p1, Landroid/os/Message;->what:I

    .line 413
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;->this$0:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-static {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
