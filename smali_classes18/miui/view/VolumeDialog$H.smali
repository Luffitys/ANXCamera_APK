.class final Lmiui/view/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final DISMISS:I = 0x2

.field private static final RECHECK:I = 0x3

.field private static final RECHECK_ALL:I = 0x4

.field private static final RESCHEDULE_TIMEOUT:I = 0x5

.field private static final RESET_SCREENSHOT:I = 0xb

.field private static final SHOW:I = 0x1

.field private static final SHOW_SAFE_WARNING:I = 0x9

.field private static final STATE_CHANGED:I = 0x6

.field private static final UPDATE_BOTTOM_MARGIN:I = 0x7

.field private static final UPDATE_LAYOUT_DIRECTION:I = 0x8

.field private static final VIBRATE:I = 0xa


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "VolumeDialog"

    packed-switch v0, :pswitch_data_96

    goto/16 :goto_94

    :pswitch_9
    const-string v0, "RESET_SCREENSHOT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mInScreenshot:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$4502(Lmiui/view/VolumeDialog;Z)Z

    goto/16 :goto_94

    :pswitch_16
    const-string v0, "VIBRATE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->vibrateH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4400(Lmiui/view/VolumeDialog;)V

    goto/16 :goto_94

    :pswitch_22
    const-string v0, "SHOW_SAFE_WARNING"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$4300(Lmiui/view/VolumeDialog;I)V

    goto :goto_94

    :pswitch_2f
    const-string v0, "UPDATE_LAYOUT_DIRECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$4200(Lmiui/view/VolumeDialog;I)V

    goto :goto_94

    :pswitch_3c
    const-string v0, "UPDATE_BOTTOM_MARGIN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4000(Lmiui/view/VolumeDialog;)V

    goto :goto_94

    :pswitch_47
    const-string v0, "STATE_CHANGED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lmiui/view/VolumeDialog;->stateChangedH(II)V
    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog;->access$4100(Lmiui/view/VolumeDialog;II)V

    goto :goto_94

    :pswitch_56
    const-string v0, "RESCHEDULE_TIMEOUT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3900(Lmiui/view/VolumeDialog;)V

    goto :goto_94

    :pswitch_61
    const-string v0, "RECHECK_ALL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3800(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_94

    :pswitch_6d
    const-string v0, "RECHECK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3800(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_94

    :pswitch_7c
    const-string v0, "DISMISS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3700(Lmiui/view/VolumeDialog;)V

    goto :goto_94

    :pswitch_87
    const-string v0, "SHOW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3600(Lmiui/view/VolumeDialog;I)V

    nop

    :goto_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_87
        :pswitch_7c
        :pswitch_6d
        :pswitch_61
        :pswitch_56
        :pswitch_47
        :pswitch_3c
        :pswitch_2f
        :pswitch_22
        :pswitch_16
        :pswitch_9
    .end packed-switch
.end method
