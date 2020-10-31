.class Lmiui/view/VolumeDialog$8;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_73

    :cond_15
    const-string v1, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, "IsFinished"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0xb

    if-nez v1, :cond_4d

    iget-object v4, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    # setter for: Lmiui/view/VolumeDialog;->mInScreenshot:Z
    invoke-static {v4, v2}, Lmiui/view/VolumeDialog;->access$4502(Lmiui/view/VolumeDialog;Z)Z

    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mDialogShowTime:J
    invoke-static {v6}, Lmiui/view/VolumeDialog;->access$5000(Lmiui/view/VolumeDialog;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_72

    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v2}, Lmiui/view/VolumeDialog;->dismiss()V

    goto :goto_72

    :cond_4d
    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    const/4 v3, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mInScreenshot:Z
    invoke-static {v2, v3}, Lmiui/view/VolumeDialog;->access$4502(Lmiui/view/VolumeDialog;Z)Z

    goto :goto_72

    :cond_5d
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v1, -0x1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V
    invoke-static {v2, v1}, Lmiui/view/VolumeDialog;->access$5100(Lmiui/view/VolumeDialog;I)V

    goto :goto_78

    :cond_72
    :goto_72
    goto :goto_78

    :cond_73
    :goto_73
    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog;->dismiss()V

    :goto_78
    return-void
.end method
