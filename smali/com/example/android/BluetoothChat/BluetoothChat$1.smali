.class Lcom/example/android/BluetoothChat/BluetoothChat$1;
.super Landroid/os/Handler;
.source "BluetoothChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChat;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 409
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 412
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    const-string v23, "BluetoothChat"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "MESSAGE_STATE_CHANGE: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    goto :goto_0

    .line 425
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const v24, 0x7f040006

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->setStatus(I)V
    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$3(Lcom/example/android/BluetoothChat/BluetoothChat;I)V

    goto :goto_0

    .line 417
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    const v25, 0x7f040005

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v28, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Lcom/example/android/BluetoothChat/BluetoothChat;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->setStatus(Ljava/lang/CharSequence;)V
    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$1(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/CharSequence;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0

    .line 421
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const v24, 0x7f040004

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->setStatus(I)V
    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$3(Lcom/example/android/BluetoothChat/BluetoothChat;I)V

    goto :goto_0

    .line 430
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    .line 432
    .local v21, "writeBuf":[B
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 433
    .local v22, "writeMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Send:  "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 437
    .end local v21    # "writeBuf":[B
    .end local v22    # "writeMessage":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [B

    .line 445
    .local v13, "readBuf":[B
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    array-length v0, v13

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v0, v13

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    .line 448
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 449
    .local v15, "readMessage_new":Ljava/lang/String;
    const-string v23, " "

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$5(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "185A5A5A5A"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 455
    .local v7, "index":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->check_55AA55AA:Z

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    add-int/lit8 v25, v7, 0xa

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 461
    .local v20, "value":Ljava/lang/String;
    add-int/lit8 v23, v7, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$5(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 472
    :goto_2
    const/4 v10, 0x0

    .local v10, "kk":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0xc

    move/from16 v0, v23

    if-ge v10, v0, :cond_0

    .line 475
    div-int/lit8 v23, v10, 0x4

    packed-switch v23, :pswitch_data_2

    .line 472
    :goto_4
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 446
    .end local v7    # "index":I
    .end local v10    # "kk":I
    .end local v15    # "readMessage_new":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_1
    aget-byte v3, v13, v23

    .local v3, "byteChar":B
    const-string v25, "%02X "

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 465
    .end local v3    # "byteChar":B
    .restart local v7    # "index":I
    .restart local v15    # "readMessage_new":Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v25, v7, 0xa

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$5(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 665
    .end local v7    # "index":I
    .end local v15    # "readMessage_new":Ljava/lang/String;
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 667
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 477
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "index":I
    .restart local v10    # "kk":I
    .restart local v15    # "readMessage_new":Ljava/lang/String;
    .restart local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "value":Ljava/lang/String;
    :pswitch_6
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch1:I

    goto :goto_4

    .line 481
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_7
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 482
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch2:I

    goto/16 :goto_4

    .line 485
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_8
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 486
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch3:I

    goto/16 :goto_4

    .line 489
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_9
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 490
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch4:I

    goto/16 :goto_4

    .line 494
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_a
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 495
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch5:I

    goto/16 :goto_4

    .line 498
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_b
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 499
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch6:I

    goto/16 :goto_4

    .line 502
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_c
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch7:I

    goto/16 :goto_4

    .line 506
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_d
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 507
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->ch8:I

    goto/16 :goto_4

    .line 510
    .end local v4    # "chval":Ljava/lang/String;
    :pswitch_e
    add-int/lit8 v23, v10, 0x4

    add-int/lit8 v24, v10, 0x4

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 511
    .restart local v4    # "chval":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->type_ch:I

    goto/16 :goto_4

    .line 519
    .end local v4    # "chval":Ljava/lang/String;
    .end local v10    # "kk":I
    .end local v20    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->check_55AA55AA:Z

    .line 520
    new-instance v14, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const-string v25, "GBK"

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v14, v13, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 522
    .local v14, "readMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$7(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 526
    .local v9, "index2":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 529
    .restart local v20    # "value":Ljava/lang/String;
    add-int/lit8 v23, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$7(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 535
    :goto_5
    const-string v23, " +"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 537
    .local v18, "strval":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 538
    const-string v16, ""

    .line 539
    .local v16, "res":Ljava/lang/String;
    const-string v11, "0"

    .line 541
    .local v11, "mEnergyShow":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_4

    add-int/lit8 v23, v6, 0x1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 646
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_3

    goto/16 :goto_0

    .line 656
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$10(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mVOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$11(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mGoOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$12(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mEnergyOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$13(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$9(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 533
    .end local v6    # "i":I
    .end local v11    # "mEnergyShow":Ljava/lang/String;
    .end local v16    # "res":Ljava/lang/String;
    .end local v18    # "strval":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v25, v9, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$7(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 544
    .restart local v6    # "i":I
    .restart local v11    # "mEnergyShow":Ljava/lang/String;
    .restart local v16    # "res":Ljava/lang/String;
    .restart local v18    # "strval":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v23, v6, 0x1

    aget-object v23, v18, v23

    const-string v24, "dV"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 545
    aget-object v23, v18, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 546
    .local v19, "val":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 548
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x4050cccccccccccdL    # 67.2

    cmpl-double v23, v23, v25

    if-lez v23, :cond_7

    const-wide v23, 0x4050cccccccccccdL    # 67.2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    const-wide v27, 0x4050cccccccccccdL    # 67.2

    sub-double v25, v25, v27

    const-wide v27, 0x3fc999999999999aL    # 0.2

    mul-double v25, v25, v27

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 549
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 550
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 551
    .local v12, "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "V"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 554
    .local v8, "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x3

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "V"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    .line 556
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404a800000000000L    # 53.0

    cmpg-double v23, v23, v25

    if-gez v23, :cond_9

    .line 557
    const-string v11, "0%"

    .line 541
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_6

    .line 558
    .restart local v8    # "index1":I
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .restart local v19    # "val":Ljava/lang/Double;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404b0ccccccccccdL    # 54.1

    cmpg-double v23, v23, v25

    if-gez v23, :cond_a

    .line 559
    const-string v11, "10%"

    .line 560
    goto :goto_7

    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404c19999999999aL    # 56.2

    cmpg-double v23, v23, v25

    if-gez v23, :cond_b

    .line 561
    const-string v11, "20%"

    .line 562
    goto :goto_7

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404cd9999999999aL    # 57.7

    cmpg-double v23, v23, v25

    if-gez v23, :cond_c

    .line 563
    const-string v11, "30%"

    .line 564
    goto :goto_7

    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404d8ccccccccccdL    # 59.1

    cmpg-double v23, v23, v25

    if-gez v23, :cond_d

    .line 565
    const-string v11, "40%"

    .line 566
    goto :goto_7

    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404e400000000000L    # 60.5

    cmpg-double v23, v23, v25

    if-gez v23, :cond_e

    .line 567
    const-string v11, "50%"

    .line 568
    goto :goto_7

    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404ed9999999999aL    # 61.7

    cmpg-double v23, v23, v25

    if-gez v23, :cond_f

    .line 569
    const-string v11, "60%"

    .line 570
    goto :goto_7

    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404f666666666666L    # 62.8

    cmpg-double v23, v23, v25

    if-gez v23, :cond_10

    .line 571
    const-string v11, "70%"

    .line 572
    goto :goto_7

    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x404ff33333333333L    # 63.9

    cmpg-double v23, v23, v25

    if-gez v23, :cond_11

    .line 573
    const-string v11, "80%"

    .line 574
    goto/16 :goto_7

    :cond_11
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x4050400000000000L    # 65.0

    cmpg-double v23, v23, v25

    if-gez v23, :cond_12

    .line 575
    const-string v11, "90%"

    .line 576
    goto/16 :goto_7

    .line 577
    :cond_12
    const-string v11, "100%"

    .line 582
    goto/16 :goto_7

    .line 583
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_13
    add-int/lit8 v23, v6, 0x1

    aget-object v23, v18, v23

    const-string v24, "dM/S"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 584
    aget-object v23, v18, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 585
    .restart local v19    # "val":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->biaf1:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    mul-double v24, v24, v26

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    div-double v26, v26, v28

    const-wide v28, 0x400ccccccccccccdL    # 3.6

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3fe8000000000000L # 0.75  was 0x3ff0000000000000L    # 1.0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/example/android/BluetoothChat/BluetoothChat;->biaf1:D

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->biaf1:D

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    .line 588
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->set_vibrator_speed(D)V
    invoke-static/range {v23 .. v25}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$8(Lcom/example/android/BluetoothChat/BluetoothChat;D)V

    .line 590
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "KMpH "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 594
    .restart local v8    # "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x3

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    goto/16 :goto_7

    .line 597
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_14
    aget-object v23, v18, v6

    const-string v24, "dA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 598
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v6, v0, :cond_8

    .line 599
    add-int/lit8 v23, v6, -0x1

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 600
    .restart local v19    # "val":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 601
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 602
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "A"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 606
    .restart local v8    # "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x3

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    goto/16 :goto_7

    .line 609
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_15
    add-int/lit8 v23, v6, 0x1

    aget-object v23, v18, v23

    const-string v24, "dA"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 611
    aget-object v23, v18, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 612
    .restart local v19    # "val":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 613
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 614
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "A"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 618
    .restart local v8    # "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x3

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    goto/16 :goto_7

    .line 621
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_16
    add-int/lit8 v23, v6, 0x1

    aget-object v23, v18, v23

    const-string v24, "m"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 622
    aget-object v23, v18, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 623
    .restart local v19    # "val":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 624
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 625
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 626
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "KM"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 629
    .restart local v8    # "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    goto/16 :goto_7

    .line 632
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :cond_17
    add-int/lit8 v23, v6, 0x1

    aget-object v23, v18, v23

    const-string v24, "C"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 633
    aget-object v23, v18, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 634
    .restart local v19    # "val":Ljava/lang/Double;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x4080480000000000L    # 521.0

    sub-double v23, v23, v25

    const-wide v25, 0x4075400000000000L    # 340.0

    div-double v23, v23, v25

    const-wide v25, 0x4041800000000000L    # 35.0

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 635
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    const-wide v25, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    .line 636
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v23, "##.####"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 637
    .restart local v12    # "myFormatter":Ljava/text/DecimalFormat;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "C"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 640
    .restart local v8    # "index1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    goto/16 :goto_7

    .line 649
    .end local v8    # "index1":I
    .end local v12    # "myFormatter":Ljava/text/DecimalFormat;
    .end local v19    # "val":Ljava/lang/Double;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$9(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 652
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$10(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 672
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v9    # "index2":I
    .end local v11    # "mEnergyShow":Ljava/lang/String;
    .end local v13    # "readBuf":[B
    .end local v14    # "readMessage":Ljava/lang/String;
    .end local v15    # "readMessage_new":Ljava/lang/String;
    .end local v16    # "res":Ljava/lang/String;
    .end local v17    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "strval":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "device_name"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$14(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Connected to "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v25, v0

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    .line 673
    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 674
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 677
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "toast"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 678
    const/16 v25, 0x0

    .line 677
    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    .line 678
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 681
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    move-object/from16 v23, v0

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->Timer10HZ()V
    invoke-static/range {v23 .. v23}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$15(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 415
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 475
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 646
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
