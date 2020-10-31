.class Lcom/milink/api/v1/McsDeviceListener$3;
.super Ljava/lang/Object;
.source "McsDeviceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDeviceListener;->onDeviceLost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDeviceListener;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener$3;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    iput-object p2, p0, Lcom/milink/api/v1/McsDeviceListener$3;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$3;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$3;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$3;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onDeviceLost(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$3;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;
    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$100(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MiLinkClientDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/milink/api/v1/MiLinkClientDevice;

    invoke-direct {v0}, Lcom/milink/api/v1/MiLinkClientDevice;-><init>()V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$3;->val$deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MiLinkClientDevice;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$3;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    # getter for: Lcom/milink/api/v1/McsDeviceListener;->mDeviceListener:Lcom/milink/api/v1/MiLinkClientDeviceListener;
    invoke-static {v1}, Lcom/milink/api/v1/McsDeviceListener;->access$100(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MiLinkClientDeviceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/milink/api/v1/MiLinkClientDeviceListener;->onDeviceLost(Lcom/milink/api/v1/MiLinkClientDevice;)V

    :cond_2e
    return-void
.end method
