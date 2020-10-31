.class Landroid/telephony/TelephonyScanManager$2;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyScanManager;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$2;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$2;->this$0:Landroid/telephony/TelephonyScanManager;

    # getter for: Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->access$300(Landroid/telephony/TelephonyScanManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
