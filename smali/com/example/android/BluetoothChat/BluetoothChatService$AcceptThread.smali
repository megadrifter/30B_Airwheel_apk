.class Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/BluetoothChat/BluetoothChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field private mSocketType:Ljava/lang/String;

.field private final mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;


# direct methods
.method public constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChatService;Z)V
    .locals 5
    .param p2, "secure"    # Z

    .prologue
    .line 271
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "tmp":Landroid/bluetooth/BluetoothServerSocket;
    if-eqz p2, :cond_0

    const-string v2, "Secure"

    :goto_0
    iput-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    .line 277
    if-eqz p2, :cond_1

    .line 278
    :try_start_0
    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {p1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$0(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const-string v3, "BluetoothChatSecure"

    .line 279
    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_SECURE:Ljava/util/UUID;
    invoke-static {}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$1()Ljava/util/UUID;

    move-result-object v4

    .line 278
    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    :goto_1
    iput-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 288
    return-void

    .line 273
    :cond_0
    const-string v2, "Insecure"

    goto :goto_0

    .line 281
    :cond_1
    :try_start_1
    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {p1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$0(Lcom/example/android/BluetoothChat/BluetoothChatService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 282
    const-string v3, "BluetoothChatInsecure"

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->MY_UUID_INSECURE:Ljava/util/UUID;
    invoke-static {}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$2()Ljava/util/UUID;

    move-result-object v4

    .line 281
    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Socket Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "listen() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 336
    const-string v1, "BluetoothChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket Type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket Type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "close() of server failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 291
    const-string v2, "BluetoothChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Socket Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const-string v4, "BEGIN mAcceptThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AcceptThread"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->setName(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    .line 298
    .local v1, "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I
    invoke-static {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$3(Lcom/example/android/BluetoothChat/BluetoothChatService;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 331
    :goto_1
    const-string v2, "BluetoothChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "END mAcceptThread, socket Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 302
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 309
    if-eqz v1, :cond_0

    .line 310
    iget-object v3, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    monitor-enter v3

    .line 311
    :try_start_1
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChatService;->mState:I
    invoke-static {v2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->access$3(Lcom/example/android/BluetoothChat/BluetoothChatService;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Socket Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "accept() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->this$0:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 316
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChatService$AcceptThread;->mSocketType:Ljava/lang/String;

    .line 315
    invoke-virtual {v2, v1, v4, v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 322
    :pswitch_1
    :try_start_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "BluetoothChatService"

    const-string v4, "Could not close unwanted socket"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
