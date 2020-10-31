.class Lcom/milink/api/v1/McsDeviceListener$2;
.super Ljava/lang/Object;
.source "McsDeviceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDeviceListener;->onDeviceFound2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDeviceListener;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$lastConnectTime:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$p2pMac:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$wifiMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    iput-object p2, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$wifiMac:Ljava/lang/String;

    iput-object p6, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$p2pMac:Ljava/lang/String;

    iput-object p7, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$lastConnectTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    const-string v1, "airkan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    const-string v1, "dlna.tv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    const-string v1, "dlna.speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_26
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    invoke-static {v3}, Lcom/milink/api/v1/type/DeviceType;->create(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/type/DeviceType;)V

    :cond_39
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$100(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MiLinkClientDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$wifiMac:Ljava/lang/String;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$p2pMac:Ljava/lang/String;

    if-nez v0, :cond_4a

    return-void

    :cond_4a
    new-instance v0, Lcom/milink/api/v1/MiLinkClientDevice;

    invoke-direct {v0}, Lcom/milink/api/v1/MiLinkClientDevice;-><init>()V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setDeviceName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setDeviceType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setP2pMac(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$wifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setWifiMac(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$lastConnectTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setLastConnectTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;
    invoke-static {v1}, Lcom/milink/api/v1/McsDeviceListener;->access$100(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MiLinkClientDeviceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/milink/api/v1/MiLinkClientDeviceListener;->onDeviceFound(Lcom/milink/api/v1/MiLinkClientDevice;)V

    :cond_76
    return-void
.end method
