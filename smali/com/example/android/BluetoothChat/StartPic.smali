.class public Lcom/example/android/BluetoothChat/StartPic;
.super Landroid/app/Activity;
.source "StartPic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/example/android/BluetoothChat/StartPic;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/StartPic;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 23
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/example/android/BluetoothChat/StartPic;->setContentView(I)V

    .line 25
    new-instance v0, Lcom/example/android/BluetoothChat/StartPic$1;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/StartPic$1;-><init>(Lcom/example/android/BluetoothChat/StartPic;)V

    .line 46
    .local v0, "newrhread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/StartPic;->finish()V

    .line 53
    return-void
.end method
