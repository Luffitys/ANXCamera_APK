.class Landroid/bluetooth/BluetoothDun$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothDun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChange on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDun"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3f

    :try_start_18
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string v0, "BluetoothDun"

    const-string v1, "onBluetoothStateChange call bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDun;->doBind()Z
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_2c} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_2c} :catch_2d

    goto :goto_3e

    :catch_2d
    move-exception v0

    const-string v1, "BluetoothDun"

    const-string v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    :catch_36
    move-exception v0

    const-string v1, "BluetoothDun"

    const-string v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    goto :goto_6d

    :cond_3f
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_46
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->access$000(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_6e

    if-eqz v1, :cond_6c

    :try_start_4e
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v2, 0x0

    # setter for: Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDun;->access$002(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    # getter for: Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->access$100(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_64
    .catchall {:try_start_4e .. :try_end_63} :catchall_6e

    goto :goto_6c

    :catch_64
    move-exception v1

    :try_start_65
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    :goto_6c
    monitor-exit v0

    :goto_6d
    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_6e

    throw v1
.end method
