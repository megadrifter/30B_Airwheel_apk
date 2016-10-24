.class Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;
.super Ljava/lang/Thread;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/BluetoothChat/BluetoothChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;


# direct methods
.method public constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 6
    .param p2, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p3, "socketType"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 429
    const-string v3, "BluetoothChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create ConnectedThread: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput-object p2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "tmpIn":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 436
    .local v2, "tmpOut":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 437
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 442
    :goto_0
    iput-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 443
    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 444
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BluetoothChatService"

    const-string v4, "temp sockets not created"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 447
    const-string v4, "BluetoothChatService"

    const-string v5, "BEGIN mConnectedThread"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 455
    .local v1, "buffer":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 456
    .local v2, "bytes":I
    if-lez v2, :cond_0

    .line 457
    new-array v0, v2, [B

    .line 458
    .local v0, "arr":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$6(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v2, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 462
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v0    # "arr":[B
    .end local v2    # "bytes":I
    :catch_0
    move-exception v3

    .line 464
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BluetoothChatService"

    const-string v5, "disconnected"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChatService;->connectionLost()V
    invoke-static {v4}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$7(Lcom/example/android/BluetoothChat/BluetoothChatService;)V

    .line 467
    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v4}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V

    .line 471
    return-void
.end method

.method public write([B)V
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 482
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$6(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
