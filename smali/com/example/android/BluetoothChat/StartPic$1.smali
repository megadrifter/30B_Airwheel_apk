.class Lcom/example/android/BluetoothChat/StartPic$1;
.super Ljava/lang/Thread;
.source "StartPic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/StartPic;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/StartPic;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/StartPic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 29
    const-wide/16 v3, 0x708

    :try_start_0
    invoke-static {v3, v4}, Lcom/example/android/BluetoothChat/StartPic$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    const-string v3, "com.example.android.BluetoothChat.BluetoothChat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .local v1, "startClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v2, "startIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-virtual {v3, v2}, Lcom/example/android/BluetoothChat/StartPic;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 44
    .end local v1    # "startClass":Ljava/lang/Class;
    .end local v2    # "startIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    const-string v3, "com.example.android.BluetoothChat.BluetoothChat"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .restart local v1    # "startClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v2    # "startIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-virtual {v3, v2}, Lcom/example/android/BluetoothChat/StartPic;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 40
    .end local v1    # "startClass":Ljava/lang/Class;
    .end local v2    # "startIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    .line 36
    :try_start_4
    const-string v4, "com.example.android.BluetoothChat.BluetoothChat"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .restart local v1    # "startClass":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .restart local v2    # "startIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/example/android/BluetoothChat/StartPic$1;->this$0:Lcom/example/android/BluetoothChat/StartPic;

    invoke-virtual {v4, v2}, Lcom/example/android/BluetoothChat/StartPic;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 43
    .end local v1    # "startClass":Ljava/lang/Class;
    .end local v2    # "startIntent":Landroid/content/Intent;
    :goto_1
    throw v3

    .line 40
    :catch_2
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 40
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
