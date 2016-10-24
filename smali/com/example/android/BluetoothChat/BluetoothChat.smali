.class public Lcom/example/android/BluetoothChat/BluetoothChat;
.super Landroid/app/Activity;
.source "BluetoothChat.java"


# static fields
.field private static final D:Z = true

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final MESSAGE_10HZ:I = 0x6

.field public static final MESSAGE_DEVICE_NAME:I = 0x4

.field public static final MESSAGE_READ:I = 0x2

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_TOAST:I = 0x5

.field public static final MESSAGE_WRITE:I = 0x3

.field private static final REQUEST_CONNECT_DEVICE_INSECURE:I = 0x2

.field private static final REQUEST_CONNECT_DEVICE_SECURE:I = 0x1

.field private static final REQUEST_ENABLE_BT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothChat"

.field public static final TOAST:Ljava/lang/String; = "toast"


# instance fields
.field ConnectCNT:I

.field MainCNT:I

.field TemFlashCNT:I

.field autoFlashTem:Z

.field beenFiveCNT:I

.field beenFiveStart:Z

.field been_half_second_later:I

.field beenfive_satrted:I

.field biaf1:D

.field biaf2:D

.field biaf3:D

.field biaf4:D

.field biaf5:D

.field ch1:I

.field ch2:I

.field ch3:I

.field ch4:I

.field ch5:I

.field ch6:I

.field ch7:I

.field ch8:I

.field check_55AA55AA:Z

.field connectTimeInterval:I

.field device:Landroid/bluetooth/BluetoothDevice;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private flash_tem_time:Ljava/lang/String;

.field flash_time:I

.field jiaoZhunCNT:I

.field jiaoZhunStart:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

.field private mConnectedDeviceName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mConversationArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationView:Landroid/widget/ListView;

.field private mEnergyOut:Landroid/widget/TextView;

.field private mGoOut:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mImBtBeen:Landroid/widget/ImageButton;

.field private mOutEditText:Landroid/widget/EditText;

.field private mOutStringBuffer:Ljava/lang/StringBuffer;

.field mSp:Landroid/content/SharedPreferences;

.field mSpeedNow:D

.field private mSpeedOut:Landroid/widget/TextView;

.field private mStauts:I

.field private mTask:Ljava/util/TimerTask;

.field private mTemOut:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mVOut:Landroid/widget/TextView;

.field msCurrent:Ljava/lang/String;

.field msGo:Ljava/lang/String;

.field msSpeed:Ljava/lang/String;

.field msTem:Ljava/lang/String;

.field msV:Ljava/lang/String;

.field private mtvEnergyLable:Landroid/widget/TextView;

.field private mtvGoLable:Landroid/widget/TextView;

.field private mtvSpeedLable:Landroid/widget/TextView;

.field private mtvTemLable:Landroid/widget/TextView;

.field private mtvVLable:Landroid/widget/TextView;

.field nBeSend:I

.field prevTemText:Ljava/lang/String;

.field private prev_bluetooth_addr:Ljava/lang/String;

.field private rcvbuffer:Ljava/lang/String;

.field private rcvbuffer_new:Ljava/lang/String;

.field revType:I

.field sch1:Ljava/lang/String;

.field sch2:Ljava/lang/String;

.field sch3:Ljava/lang/String;

.field sch4:Ljava/lang/String;

.field sch5:Ljava/lang/String;

.field sch6:Ljava/lang/String;

.field sch7:Ljava/lang/String;

.field sch8:Ljava/lang/String;

.field speed:D

.field tryTimes:I

.field type_ch:I

.field private vibration_speed:Ljava/lang/String;

.field vibration_warn_speed:D

.field vibrator:Landroid/os/Vibrator;

.field waittintcnt:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 97
    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    .line 114
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenfive_satrted:I

    .line 125
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mStauts:I

    .line 403
    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->msV:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->msSpeed:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->msGo:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->msTem:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->msCurrent:Ljava/lang/String;

    .line 407
    iput-boolean v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->check_55AA55AA:Z

    .line 409
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChat$1;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$1;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;

    .line 688
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    .line 689
    iput-boolean v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 691
    const/16 v0, 0x1e

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    .line 692
    const-string v0, "0"

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prevTemText:Ljava/lang/String;

    .line 694
    iput-boolean v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunStart:Z

    iput-boolean v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    .line 696
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    .line 698
    const/16 v0, 0x14

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    .line 700
    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    .line 701
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    iput-wide v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    .line 702
    const/16 v0, 0x12c

    iput v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_time:I

    .line 60
    return-void
.end method

.method private Timer10HZ()V
    .locals 11

    .prologue
    .line 713
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    .line 714
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    const v6, 0xea60

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    .line 716
    :cond_0
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 718
    const-wide/high16 v5, 0x402a000000000000L    # 13.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    .line 745
    :cond_1
    :goto_0
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->speed:D

    iget-wide v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    add-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_2

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->speed:D

    iget-wide v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    neg-double v7, v7

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    sub-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_14

    .line 747
    :cond_2
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    rem-int/lit8 v5, v5, 0xa

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 749
    :cond_3
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 761
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    const-string v6, "15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 763
    const/16 v5, 0x96

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_time:I

    .line 779
    :cond_5
    :goto_2
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    .line 780
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    .line 782
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    const/16 v6, 0x3c

    if-ge v5, v6, :cond_1e

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_1e

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    iget v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    if-le v5, v6, :cond_1e

    .line 784
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    .line 786
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_1b

    .line 787
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 788
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const-string v6, "\nPlease connect manually\n"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :goto_3
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1c

    .line 801
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    const/16 v6, 0x258

    if-ge v5, v6, :cond_6

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    add-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 802
    :cond_6
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    .line 809
    :goto_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 810
    const/16 v5, 0xaa

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    .line 811
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    .line 839
    :cond_7
    :goto_5
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->check_55AA55AA:Z

    if-eqz v5, :cond_2b

    .line 840
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v5, "##.####"

    invoke-direct {v1, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 841
    .local v1, "myFormatter1":Ljava/text/DecimalFormat;
    const-string v0, "100"

    .line 845
    .local v0, "mEnergyShow":Ljava/lang/String;
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->type_ch:I

    packed-switch v5, :pswitch_data_0

    .line 920
    :goto_6
    :pswitch_0
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 921
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    packed-switch v5, :pswitch_data_1

    .line 934
    :goto_7
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvVLable:Landroid/widget/TextView;

    const-string v6, "voltage: (V)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvGoLable:Landroid/widget/TextView;

    const-string v6, "The trip: (km)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvEnergyLable:Landroid/widget/TextView;

    const-string v6, "power\uff1a(%)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v6, "The temperature: ( C )"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mVOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mGoOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch4:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mEnergyOut:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch6:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    .end local v0    # "mEnergyShow":Ljava/lang/String;
    .end local v1    # "myFormatter1":Ljava/text/DecimalFormat;
    :cond_8
    :goto_8
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    if-eqz v5, :cond_9

    .line 970
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    .line 972
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    rem-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 973
    const-string v5, "b"

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 981
    :cond_9
    :goto_9
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunStart:Z

    if-eqz v5, :cond_a

    .line 982
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    .line 983
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    rem-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 984
    const-string v5, "c"

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 994
    :cond_a
    :goto_a
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    if-lez v5, :cond_b

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    .line 995
    :cond_b
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const-string v5, "b"

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 997
    :cond_c
    return-void

    .line 720
    :cond_d
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "16"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 722
    :cond_e
    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 724
    :cond_f
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "19"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 726
    const-wide/high16 v5, 0x4033000000000000L    # 19.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 728
    :cond_10
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "22"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 730
    const-wide/high16 v5, 0x4036000000000000L    # 22.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 732
    :cond_11
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "25"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 734
    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 736
    :cond_12
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "28"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 738
    const-wide/high16 v5, 0x403c000000000000L    # 28.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 740
    :cond_13
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    const-string v6, "close"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 742
    const-wide v5, 0x40c3880000000000L    # 10000.0

    iput-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    goto/16 :goto_0

    .line 750
    :cond_14
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->speed:D

    iget-wide v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_15

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->speed:D

    iget-wide v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_warn_speed:D

    neg-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    .line 752
    :cond_15
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    rem-int/lit8 v5, v5, 0xa

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->MainCNT:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 754
    :cond_16
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_1

    .line 765
    :cond_17
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    const-string v6, "30"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 767
    :cond_18
    const/16 v5, 0x12c

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_time:I

    goto/16 :goto_2

    .line 769
    :cond_19
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    const-string v6, "60"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 771
    const/16 v5, 0x258

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_time:I

    goto/16 :goto_2

    .line 773
    :cond_1a
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    const-string v6, "120"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 775
    const/16 v5, 0x4b0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_time:I

    goto/16 :goto_2

    .line 792
    :cond_1b
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->device:Landroid/bluetooth/BluetoothDevice;

    .line 793
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connect(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 795
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v6, "Connect hint"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 797
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Try to connect the last connection\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 805
    :cond_1c
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    const/16 v6, 0x258

    if-ge v5, v6, :cond_1d

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    add-int/lit8 v5, v5, 0x1e

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 806
    :cond_1d
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    goto/16 :goto_4

    .line 813
    :cond_1e
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1f

    .line 815
    const/16 v5, 0x1e

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 816
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    .line 817
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    .line 818
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    .line 820
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 821
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "Connect hint"

    if-ne v5, v6, :cond_7

    .line 823
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v6, "Speed:(km/h)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 826
    :cond_1f
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    const/16 v6, 0x3c

    if-lt v5, v6, :cond_20

    .line 828
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const-string v6, "\nAutomatic connection failed\n"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    .line 830
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    goto/16 :goto_5

    .line 832
    :cond_20
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 833
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->waittintcnt:I

    goto/16 :goto_5

    .line 848
    .restart local v0    # "mEnergyShow":Ljava/lang/String;
    .restart local v1    # "myFormatter1":Ljava/text/DecimalFormat;
    :pswitch_1
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch1:I

    int-to-short v5, v5

    int-to-double v3, v5

    .line 849
    .local v3, "val":D
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v5, v3, v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v3, v5, v7

    .line 850
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch1:Ljava/lang/String;

    .line 851
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch1:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 852
    .local v2, "sindex":I
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch1:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch1:Ljava/lang/String;

    .line 854
    const-wide v5, 0x404a800000000000L    # 53.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_21

    .line 855
    const-string v0, "0%"

    .line 878
    :goto_b
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch2:I

    int-to-short v5, v5

    int-to-double v3, v5

    .line 879
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v5, v3, v5

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v5, v7

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v3, v5, v7

    .line 880
    iput-wide v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    .line 881
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    .line 882
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 883
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    .line 885
    invoke-direct {p0, v3, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->set_vibrator_speed(D)V

    .line 887
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch3:I

    const v6, 0xffff

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch4:I

    add-int/2addr v5, v6

    int-to-double v3, v5

    .line 888
    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v5, v3, v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v3, v5, v7

    .line 889
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch4:Ljava/lang/String;

    .line 890
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch4:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 891
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch4:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch4:Ljava/lang/String;

    .line 893
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch5:I

    int-to-short v5, v5

    int-to-double v3, v5

    .line 894
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v5, v3, v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v3, v5, v7

    .line 895
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch5:Ljava/lang/String;

    .line 896
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch5:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 897
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch5:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch5:Ljava/lang/String;

    .line 899
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ch6:I

    int-to-short v5, v5

    int-to-double v3, v5

    .line 900
    const-wide v5, 0x4080480000000000L    # 521.0

    sub-double v5, v3, v5

    const-wide v7, 0x4075400000000000L    # 340.0

    div-double/2addr v5, v7

    const-wide v7, 0x4041800000000000L    # 35.0

    add-double/2addr v5, v7

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double v3, v5, v7

    .line 901
    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch6:Ljava/lang/String;

    .line 902
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch6:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 903
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch6:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch6:Ljava/lang/String;

    goto/16 :goto_6

    .line 856
    :cond_21
    const-wide v5, 0x404b0ccccccccccdL    # 54.1

    cmpg-double v5, v3, v5

    if-gez v5, :cond_22

    .line 857
    const-string v0, "10%"

    .line 858
    goto/16 :goto_b

    :cond_22
    const-wide v5, 0x404c19999999999aL    # 56.2

    cmpg-double v5, v3, v5

    if-gez v5, :cond_23

    .line 859
    const-string v0, "20%"

    .line 860
    goto/16 :goto_b

    :cond_23
    const-wide v5, 0x404cd9999999999aL    # 57.7

    cmpg-double v5, v3, v5

    if-gez v5, :cond_24

    .line 861
    const-string v0, "30%"

    .line 862
    goto/16 :goto_b

    :cond_24
    const-wide v5, 0x404d8ccccccccccdL    # 59.1

    cmpg-double v5, v3, v5

    if-gez v5, :cond_25

    .line 863
    const-string v0, "40%"

    .line 864
    goto/16 :goto_b

    :cond_25
    const-wide v5, 0x404e400000000000L    # 60.5

    cmpg-double v5, v3, v5

    if-gez v5, :cond_26

    .line 865
    const-string v0, "50%"

    .line 866
    goto/16 :goto_b

    :cond_26
    const-wide v5, 0x404ed9999999999aL    # 61.7

    cmpg-double v5, v3, v5

    if-gez v5, :cond_27

    .line 867
    const-string v0, "60%"

    .line 868
    goto/16 :goto_b

    :cond_27
    const-wide v5, 0x404f666666666666L    # 62.8

    cmpg-double v5, v3, v5

    if-gez v5, :cond_28

    .line 869
    const-string v0, "70%"

    .line 870
    goto/16 :goto_b

    :cond_28
    const-wide v5, 0x404ff33333333333L    # 63.9

    cmpg-double v5, v3, v5

    if-gez v5, :cond_29

    .line 871
    const-string v0, "80%"

    .line 872
    goto/16 :goto_b

    :cond_29
    const-wide v5, 0x4050400000000000L    # 65.0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2a

    .line 873
    const-string v0, "90%"

    .line 874
    goto/16 :goto_b

    .line 875
    :cond_2a
    const-string v0, "100%"

    goto/16 :goto_b

    .line 923
    .end local v2    # "sindex":I
    .end local v3    # "val":D
    :pswitch_2
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v6, "Speed:(km/h)"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 927
    :pswitch_3
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch5:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 930
    :pswitch_4
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->sch2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 946
    .end local v0    # "mEnergyShow":Ljava/lang/String;
    .end local v1    # "myFormatter1":Ljava/text/DecimalFormat;
    :cond_2b
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 948
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    const/16 v6, 0x7530

    if-ge v5, v6, :cond_2c

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    .line 949
    :cond_2c
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    const/16 v6, 0xc8

    if-le v5, v6, :cond_8

    .line 951
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    if-nez v5, :cond_2d

    .line 952
    const/4 v5, 0x1

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    .line 953
    const-string v5, "n"

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 954
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v6, "Refresh..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :cond_2d
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prevTemText:Ljava/lang/String;

    if-eq v5, v6, :cond_8

    .line 957
    const-string v5, ","

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 958
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prevTemText:Ljava/lang/String;

    .line 959
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    .line 960
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    .line 961
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v6, "The temperature: ( C )"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 975
    :cond_2e
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    const/16 v6, 0x35

    if-le v5, v6, :cond_9

    .line 976
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenfive_satrted:I

    .line 977
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    .line 978
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveCNT:I

    goto/16 :goto_9

    .line 985
    :cond_2f
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    rem-int/lit8 v5, v5, 0x6

    const/4 v6, 0x4

    if-ne v5, v6, :cond_30

    .line 987
    const-string v5, "y"

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 988
    :cond_30
    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    const/16 v6, 0x11

    if-le v5, v6, :cond_a

    .line 989
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunStart:Z

    .line 990
    const/4 v5, 0x0

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunCNT:I

    goto/16 :goto_a

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 921
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/example/android/BluetoothChat/BluetoothChat;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$10(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mVOut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mGoOut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mEnergyOut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConnectedDeviceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/example/android/BluetoothChat/BluetoothChat;)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->Timer10HZ()V

    return-void
.end method

.method static synthetic access$16(Lcom/example/android/BluetoothChat/BluetoothChat;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mStauts:I

    return v0
.end method

.method static synthetic access$17(Lcom/example/android/BluetoothChat/BluetoothChat;I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mStauts:I

    return-void
.end method

.method static synthetic access$18(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/android/BluetoothChat/BluetoothChat;I)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/example/android/BluetoothChat/BluetoothChat;->setStatus(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer_new:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/example/android/BluetoothChat/BluetoothChat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/example/android/BluetoothChat/BluetoothChat;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->rcvbuffer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/example/android/BluetoothChat/BluetoothChat;D)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Lcom/example/android/BluetoothChat/BluetoothChat;->set_vibrator_speed(D)V

    return-void
.end method

.method static synthetic access$9(Lcom/example/android/BluetoothChat/BluetoothChat;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;

    return-object v0
.end method

.method private connectDevice(Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "secure"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1030
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/example/android/BluetoothChat/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1034
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v2, v1, p2}, Lcom/example/android/BluetoothChat/BluetoothChatService;->connect(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1036
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "BlueTooth_addr"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1037
    iget-object v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1038
    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    .line 1039
    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->ConnectCNT:I

    .line 1040
    const/16 v2, 0x1e

    iput v2, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 1041
    iput v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->tryTimes:I

    .line 1042
    return-void
.end method

.method private ensureDiscoverable()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 299
    const-string v1, "BluetoothChat"

    const-string v2, "ensure discoverable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 301
    const/16 v2, 0x17

    .line 300
    if-eq v1, v2, :cond_0

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "discoverableIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivity(Landroid/content/Intent;)V

    .line 306
    .end local v0    # "discoverableIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const-wide v4, 0x408f400000000000L    # 1000.0

    const/4 v3, 0x0

    .line 314
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 315
    const v1, 0x7f040002

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 316
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    const-string v2, "Please connect...."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v1, "n"

    if-ne p1, v1, :cond_3

    .line 322
    iput v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    .line 323
    iput-wide v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    .line 337
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 340
    .local v0, "send":[B
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v1, v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->write([B)V

    .line 347
    .end local v0    # "send":[B
    :cond_2
    iget v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenfive_satrted:I

    if-nez v1, :cond_0

    const-string v1, "y"

    if-eq p1, v1, :cond_0

    const-string v1, "c"

    if-eq p1, v1, :cond_0

    .line 349
    iget v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v2, "Speed:(km/h)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvVLable:Landroid/widget/TextView;

    const-string v2, "voltage: (V)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvGoLable:Landroid/widget/TextView;

    const-string v2, "The trip: (km)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvEnergyLable:Landroid/widget/TextView;

    const-string v2, "power\uff1a(%)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :cond_3
    const-string v1, "m"

    if-ne p1, v1, :cond_4

    .line 325
    const/4 v1, 0x2

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    .line 326
    iput-wide v4, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    goto :goto_1

    .line 328
    :cond_4
    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->revType:I

    .line 329
    iput-boolean v6, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 330
    iput v3, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->nBeSend:I

    .line 331
    const/16 v1, 0x64

    iput v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->TemFlashCNT:I

    .line 332
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v2, "The temperature: ( C )"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 353
    :pswitch_1
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvVLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvGoLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvEnergyLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v2, "The temperature: ( C )"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 363
    :pswitch_2
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    const-string v2, "Motor current: (A)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvVLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvGoLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvEnergyLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    const-string v2, "Pause display"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final setStatus(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 396
    return-void
.end method

.method private final setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 401
    return-void
.end method

.method private set_vibrator_speed(D)V
    .locals 0
    .param p1, "speed"    # D

    .prologue
    .line 706
    iput-wide p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->speed:D

    .line 707
    return-void
.end method

.method private setupChat()V
    .locals 6

    .prologue
    .line 214
    const-string v0, "BluetoothChat"

    const-string v1, "setupChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030005

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mConversationArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 221
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedOut:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mVOut:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mGoOut:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mImBtBeen:Landroid/widget/ImageButton;

    .line 225
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvSpeedLable:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvVLable:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvGoLable:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTemOut:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mEnergyOut:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvEnergyLable:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mtvTemLable:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 235
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibrator:Landroid/os/Vibrator;

    .line 254
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mImBtBeen:Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/android/BluetoothChat/BluetoothChat$3;

    invoke-direct {v1, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$3;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChatService;

    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChatService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mOutStringBuffer:Ljava/lang/StringBuffer;

    .line 268
    return-void
.end method

.method private updateSharedPreferencesValue()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "BlueTooth_addr"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->prev_bluetooth_addr:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "flash_tem_time"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->flash_tem_time:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "Vibration_Speed"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->vibration_speed:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1000
    const-string v0, "BluetoothChat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    packed-switch p1, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1004
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1005
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->connectDevice(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1010
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1011
    invoke-direct {p0, p3, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->connectDevice(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1016
    :pswitch_2
    if-ne p2, v3, :cond_1

    .line 1018
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V

    goto :goto_0

    .line 1021
    :cond_1
    const-string v0, "BluetoothChat"

    const-string v1, "BT not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const v0, 0x7f040003

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1023
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->finish()V

    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "BluetoothChat"

    const-string v1, "+++ ON CREATE +++"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/example/android/BluetoothChat/BluetoothChat;->setContentView(I)V

    .line 136
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 139
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "Bluetooth is not available"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->finish()V

    .line 169
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-object p0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mContext:Landroid/content/Context;

    const-string v1, "GotWay.ini"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSp:Landroid/content/SharedPreferences;

    .line 153
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 157
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTimer:Ljava/util/Timer;

    .line 158
    new-instance v0, Lcom/example/android/BluetoothChat/BluetoothChat$2;

    invoke-direct {v0, p0}, Lcom/example/android/BluetoothChat/BluetoothChat$2;-><init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V

    iput-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTask:Ljava/util/TimerTask;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1047
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f050001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1048
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 293
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->stop()V

    .line 294
    :cond_0
    const-string v0, "BluetoothChat"

    const-string v1, "--- ON DESTROY ---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 296
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1054
    const/4 v2, 0x0

    .line 1055
    .local v2, "serverIntent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1347
    :pswitch_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 1058
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "serverIntent":Landroid/content/Intent;
    const-class v5, Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1059
    .restart local v2    # "serverIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1060
    const/16 v5, 0x258

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 1062
    const/4 v5, 0x1

    goto :goto_0

    .line 1066
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "serverIntent":Landroid/content/Intent;
    const-class v5, Lcom/example/android/BluetoothChat/DeviceListActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1067
    .restart local v2    # "serverIntent":Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1068
    const/16 v5, 0x258

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->connectTimeInterval:I

    .line 1070
    const/4 v5, 0x1

    goto :goto_0

    .line 1073
    :pswitch_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 1074
    const-string v1, "n"

    .line 1075
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1076
    const/4 v5, 0x1

    goto :goto_0

    .line 1080
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_4
    const-string v1, "m"

    .line 1081
    .restart local v1    # "message":Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 1082
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1083
    const/4 v5, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_5
    :try_start_0
    const-string v5, "com.example.android.BluetoothChat.BluetoothAdvanced"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1089
    .local v3, "startClass":Ljava/lang/Class;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1090
    .local v4, "startIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v3    # "startClass":Ljava/lang/Class;
    .end local v4    # "startIntent":Landroid/content/Intent;
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1098
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_6
    const-string v1, ","

    .line 1099
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1101
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenfive_satrted:I

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    if-nez v5, :cond_0

    .line 1103
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    .line 1105
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_7
    const-string v1, ","

    .line 1110
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1112
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1114
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_2

    .line 1115
    const-string v5, "Failure, because in the view of current or temperature"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1129
    :cond_1
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1117
    :cond_2
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_3

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    .line 1119
    :cond_3
    const-string v5, "Failure, because it\'s running"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1121
    :cond_4
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->beenFiveStart:Z

    if-eqz v5, :cond_5

    .line 1122
    const-string v5, "Please wait 5 sound alarm completed"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1123
    :cond_5
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunStart:Z

    if-nez v5, :cond_1

    .line 1124
    const-string v5, "Enter the success, please put GotWay horizontal and then reboot"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1125
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->jiaoZhunStart:Z

    goto :goto_2

    .line 1133
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_8
    const-string v1, "h"

    .line 1134
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1135
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 1137
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_6

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_8

    .line 1139
    :cond_6
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1148
    :cond_7
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1143
    :cond_8
    const-string v5, "The mode has been set to Madden"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1144
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_3

    .line 1152
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_9
    const-string v1, "f"

    .line 1153
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1155
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    .line 1157
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_9

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_b

    .line 1159
    :cond_9
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1174
    :cond_a
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1163
    :cond_b
    iget-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->check_55AA55AA:Z

    if-eqz v5, :cond_c

    .line 1164
    const-string v5, "The mode has been set to comfort"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1165
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_4

    .line 1168
    :cond_c
    const-string v5, "MCN1 no comfort mode ."

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1177
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_a
    const-string v1, "s"

    .line 1178
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1180
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    .line 1182
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_d

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_f

    .line 1184
    :cond_d
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1192
    :cond_e
    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1187
    :cond_f
    const-string v5, "The mode has been set to Soft"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1188
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_5

    .line 1195
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_b
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1196
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "13"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1197
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1198
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1199
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1203
    :pswitch_c
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1204
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "16"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1205
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1208
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1211
    :pswitch_d
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1212
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "19"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1213
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1214
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1216
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1219
    :pswitch_e
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1220
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "22"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1221
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1222
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1223
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1227
    :pswitch_f
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1228
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "25"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1229
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1230
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1231
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1235
    :pswitch_10
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1236
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "28"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1237
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1238
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1240
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1244
    :pswitch_11
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1245
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "Vibration_Speed"

    const-string v7, "close"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1246
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1247
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1248
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1251
    :pswitch_12
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->autoFlashTem:Z

    .line 1252
    const-string v1, "n"

    .line 1253
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_13
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1259
    const-string v5, ","

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1260
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "flash_tem_time"

    const-string v7, "15"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1261
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1262
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1263
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1267
    :pswitch_14
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1268
    const-string v5, ","

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1269
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "flash_tem_time"

    const-string v7, "30"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1270
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1271
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1273
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1276
    :pswitch_15
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1277
    const-string v5, ","

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1278
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "flash_tem_time"

    const-string v7, "60"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1279
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1280
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1282
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1285
    :pswitch_16
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1286
    const-string v5, ","

    invoke-direct {p0, v5}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1287
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "flash_tem_time"

    const-string v7, "120"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1288
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1289
    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->updateSharedPreferencesValue()V

    .line 1291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1294
    :pswitch_17
    const-string v1, "u"

    .line 1295
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1297
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_11

    .line 1299
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_10

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_12

    .line 1301
    :cond_10
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1309
    :cond_11
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1304
    :cond_12
    const-string v5, "Level 1 alarm closed"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1305
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_6

    .line 1312
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_18
    const-string v1, "i"

    .line 1313
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1315
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_14

    .line 1317
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_13

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_15

    .line 1319
    :cond_13
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1327
    :cond_14
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1322
    :cond_15
    const-string v5, "Level 1 alarm closed"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1323
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_7

    .line 1330
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_19
    const-string v1, "o"

    .line 1331
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->sendMessage(Ljava/lang/String;)V

    .line 1333
    iget-object v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v5}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_17

    .line 1335
    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_16

    iget-wide v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mSpeedNow:D

    const-wide v7, -0x402ccccccccccccdL    # -0.3

    cmpg-double v5, v5, v7

    if-gez v5, :cond_18

    .line 1337
    :cond_16
    const-string v5, "Please stop the car and try again"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1345
    :cond_17
    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1340
    :cond_18
    const-string v5, "Speed alarm opened"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1341
    const/4 v5, 0x7

    iput v5, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->been_half_second_later:I

    goto :goto_8

    .line 1055
    :pswitch_data_0
    .packed-switch 0x7f060019
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    const-string v0, "BluetoothChat"

    const-string v1, "- ON PAUSE -"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    const-string v0, "BluetoothChat"

    const-string v1, "+ ON RESUME +"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    invoke-virtual {v0}, Lcom/example/android/BluetoothChat/BluetoothChatService;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 182
    const-string v1, "BluetoothChat"

    const-string v2, "++ ON START ++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "enableIntent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    .end local v0    # "enableIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/example/android/BluetoothChat/BluetoothChat;->mChatService:Lcom/example/android/BluetoothChat/BluetoothChatService;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/example/android/BluetoothChat/BluetoothChat;->setupChat()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 284
    const-string v0, "BluetoothChat"

    const-string v1, "-- ON STOP --"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method
