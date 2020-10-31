.class final Landroid/app/ReceiverReporter$ReceiverHandler;
.super Landroid/os/Handler;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverHandler"
.end annotation


# static fields
.field static final RECEIVER_RECORDS:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MIUI-ReceiverReporter"

    if-eqz v0, :cond_d

    const-string/jumbo v0, "wrong message received of BRReportHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_d
    :try_start_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_20

    # invokes: Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z
    invoke-static {}, Landroid/app/ReceiverReporter;->access$000()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    :cond_20
    goto :goto_29

    :catch_21
    move-exception v0

    const-string/jumbo v2, "report message record error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_29
    return-void
.end method
