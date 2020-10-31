.class Landroid/media/AudioStatusHandler$ModeState;
.super Landroid/media/AudioStatusHandler$AudioState;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeState"
.end annotation


# instance fields
.field private mModeMask:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;)V
    .registers 5

    iput-object p1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    nop

    # getter for: Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/media/AudioStatusHandler;->access$500(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_mask_for_notify"

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, "3"

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    :cond_1f
    return-void
.end method

.method private isSpeakerOn()Z
    .registers 3

    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    iget v0, v0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private sendModeNotification()V
    .registers 4

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    if-nez v0, :cond_22

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification not communication mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    # getter for: Landroid/media/AudioStatusHandler;->DEBUG:Z
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$400()Z

    move-result v0

    if-eqz v0, :cond_63

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " speakerOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->isSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/AudioStatusHandler;->access$1100(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;
    invoke-static {v1}, Landroid/media/AudioStatusHandler;->access$900(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager$AudioPlaybackCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/AudioStatusHandler;->access$1000(Landroid/media/AudioStatusHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # getter for: Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/media/AudioStatusHandler;->access$500(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mPid:I

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->isSpeakerOn()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioStatusNotify;->sendAudioStatusNotification(Landroid/content/Context;IZ)V

    return-void
.end method

.method private sendOrUpdateModeMsg()V
    .registers 11

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    const/16 v1, 0x2711

    const-wide/16 v2, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # invokes: Landroid/media/AudioStatusHandler;->cancelMessage(I)V
    invoke-static {v0, v1}, Landroid/media/AudioStatusHandler;->access$700(Landroid/media/AudioStatusHandler;I)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    const/16 v1, 0x2712

    # invokes: Landroid/media/AudioStatusHandler;->sendMessage(IJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioStatusHandler;->access$800(Landroid/media/AudioStatusHandler;IJ)V

    return-void

    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_23

    iput-wide v4, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    :cond_23
    const-wide/32 v6, 0x1d4c0

    iget-wide v8, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    sub-long v8, v4, v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-gez v0, :cond_31

    const-wide/16 v6, 0x0

    :cond_31
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # invokes: Landroid/media/AudioStatusHandler;->sendMessage(IJ)V
    invoke-static {v0, v1, v6, v7}, Landroid/media/AudioStatusHandler;->access$800(Landroid/media/AudioStatusHandler;IJ)V

    return-void
.end method

.method private showNotifyForMode()Z
    .registers 4

    # getter for: Landroid/media/AudioStatusHandler;->DEBUG:Z
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2b

    # getter for: Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/AudioStatusHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotifyForMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modeString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    return v0

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigChanaged()Z
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMessageReceived(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_11

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_b

    goto :goto_15

    :cond_b
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    # invokes: Landroid/media/AudioStatusHandler;->cancelModeNotification()V
    invoke-static {v0}, Landroid/media/AudioStatusHandler;->access$600(Landroid/media/AudioStatusHandler;)V

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendModeNotification()V

    nop

    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged()V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    return-void
.end method
