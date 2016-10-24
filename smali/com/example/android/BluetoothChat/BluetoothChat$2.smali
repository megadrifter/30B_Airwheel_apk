.class Lcom/example/android/BluetoothChat/BluetoothChat$2;
.super Ljava/util/TimerTask;
.source "BluetoothChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 158
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mStauts:I
    invoke-static {v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$16(Lcom/example/android/BluetoothChat/BluetoothChat;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$17(Lcom/example/android/BluetoothChat/BluetoothChat;I)V

    .line 163
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$18(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method
