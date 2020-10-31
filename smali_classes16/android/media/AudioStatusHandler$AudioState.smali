.class abstract Landroid/media/AudioStatusHandler$AudioState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AudioState"
.end annotation


# instance fields
.field final DEFAULT_STATE:I

.field mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

.field mPid:I

.field mStartTime:J

.field mState:I

.field mUsage:I

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioStatusHandler;II)V
    .registers 6

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput p2, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigChanaged()Z
.end method

.method public abstract onMessageReceived(Landroid/os/Message;)Z
.end method

.method public abstract onStateChanged()V
.end method

.method public update(Landroid/os/Bundle;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4e

    :cond_a
    iget v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const-string/jumbo v2, "usage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    const-string/jumbo v1, "pid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    if-ne v1, v3, :cond_2f

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-ne v2, v3, :cond_2f

    return v0

    :cond_2f
    iput v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    iput v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_41
    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    if-ne v0, v3, :cond_49

    iput-wide v5, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_49
    invoke-virtual {p0}, Landroid/media/AudioStatusHandler$AudioState;->onStateChanged()V

    const/4 v0, 0x1

    return v0

    :cond_4e
    :goto_4e
    return v0
.end method

.method public updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z
    .registers 3

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    const/4 v0, 0x1

    return v0
.end method
