.class Lcom/milink/api/v1/MilinkClientManager$1;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/MilinkClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/MilinkClientManager;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/MilinkClientManager;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/milink/api/v1/MilinkClientManager$1$1;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/MilinkClientManager$1$1;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    invoke-static {p2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v2

    # setter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1, v2}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    :try_start_1f
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/milink/api/v1/MilinkClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/milink/api/v1/MilinkClientManager$1$2;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/MilinkClientManager$1$2;-><init>(Lcom/milink/api/v1/MilinkClientManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_16
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1}, Lcom/milink/api/v1/MilinkClientManager;->access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;

    move-result-object v1

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    # getter for: Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;
    invoke-static {v2}, Lcom/milink/api/v1/MilinkClientManager;->access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/milink/api/v1/aidl/IMcs;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_48
    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager$1;->this$0:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v2, 0x0

    # setter for: Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;
    invoke-static {v1, v2}, Lcom/milink/api/v1/MilinkClientManager;->access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;

    return-void
.end method
