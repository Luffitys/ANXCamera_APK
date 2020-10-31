.class public Lcom/milink/api/v1/McsDeviceListener;
.super Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;
.source "McsDeviceListener.java"


# instance fields
.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MiLinkClientDeviceListener;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;

    return-object v0
.end method


# virtual methods
.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDeviceListener$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/milink/api/v1/McsDeviceListener$1;-><init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceFound2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v9, v8, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/milink/api/v1/McsDeviceListener$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/milink/api/v1/McsDeviceListener$2;-><init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDeviceListener$3;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDeviceListener$3;-><init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method

.method public setDeviceListener(Lcom/milink/api/v1/MiLinkClientDeviceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;

    return-void
.end method
