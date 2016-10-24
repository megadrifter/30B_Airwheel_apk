.class Lcom/example/android/BluetoothChat/BluetoothChat$3;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$3;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    const-string v0, "b"

    .line 260
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$3;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    # invokes: Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->access$19(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V

    .line 261
    return-void
.end method
