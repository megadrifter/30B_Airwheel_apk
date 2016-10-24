.class Lcom/example/android/BluetoothChat/BluetoothAdvanced$2;
.super Ljava/lang/Object;
.source "BluetoothAdvanced.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothAdvanced;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothAdvanced;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothAdvanced;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothAdvanced;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    const-string v0, "b"

    .line 58
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothAdvanced;

    # invokes: Lcom/example/android/BluetoothChat/BluetoothAdvanced;->hintsomething()V
    invoke-static {v1}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->access$0(Lcom/example/android/BluetoothChat/BluetoothAdvanced;)V

    .line 59
    return-void
.end method
