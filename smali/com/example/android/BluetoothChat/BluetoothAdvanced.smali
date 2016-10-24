.class public Lcom/example/android/BluetoothChat/BluetoothAdvanced;
.super Landroid/app/Activity;
.source "BluetoothAdvanced.java"


# static fields
.field private static final D:Z = false

.field public static final MESSAGE_DEVICE_NAME:I = 0x4

.field public static final MESSAGE_READ:I = 0x2

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_TOAST:I = 0x5

.field public static final MESSAGE_WRITE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

.field private final mHandler:Landroid/os/Handler;

.field private mImBtBeen:Landroid/widget/ImageButton;

.field private mTVshow:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 118
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothAdvanced$1;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced$1;-><init>(Lcom/example/android/BluetoothChat/BluetoothAdvanced;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/example/android/BluetoothChat/BluetoothAdvanced;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->hintsomething()V

    return-void
.end method

.method private hintsomething()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "Hei hei!! Don\'t press, there is no \'Dongdong\' you want"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 101
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 109
    .local v0, "send":[B
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->write([B)V

    .line 116
    .end local v0    # "send":[B
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->setContentView(I)V

    .line 45
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mImBtBeen:Landroid/widget/ImageButton;

    .line 46
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const-string v1, "Advanced features are still perfect, please pay attention to the GotWay APP update, more help, please click the menu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mImBtBeen:Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/android/BluetoothChat/BluetoothAdvanced$2;

    invoke-direct {v1, p0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced$2;-><init>(Lcom/example/android/BluetoothChat/BluetoothAdvanced;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 64
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 236
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 246
    :pswitch_0
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const-string v2, "In the \'basic function\' interface, click menu and choose \'Connect a device - Secure\', and then scan the other device, find,\'GotWay\', sometimes shown as \'null\', and then connected it with password ,general is \'1234\', if success you can see the data of voltage or speed or other.if you cannot connect,you can paired Bluetooth first in the phone settings, then back to the software connect directly"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const-string v2, "Horizontal alignment method:Turn on and keep the car is stationary, connection to the car, return to the \'basic function\' interface, click menu and then select Horizontal alignment,then you can heard didididi ring, at this time placed the body horizontally, reboot the car,if you heard 5 short sound and then a long sound to indicate success, If you do not hear a long sound After the sound of 5, indicate failure"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const-string v2, "Mode setting method: Turn on and keep the car is stationary, connection to the car, return to the \'basic function\' interface, click menu and then select the mode you want"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mTVshow:Landroid/widget/TextView;

    const-string v2, "Internal version: 3.4.51\n the software supporting GotWay_MCN2, part of the function is compatible with the MCN1. The \n The final explanation right belongs to the Ke Bai Yi Electronic Technology Company"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x7f060015
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized onResume()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothAdvanced;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
