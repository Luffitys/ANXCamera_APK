.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_26

    :cond_1c
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # setter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$902(Landroid/media/tv/TvInputService$Session;J)J

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # invokes: Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V
    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1000(Landroid/media/tv/TvInputService$Session;J)V

    :cond_26
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    move-result-wide v2

    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ") cannot be earlier than start position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v7}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "). Reset to the start position."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TvInputService"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    :cond_65
    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J
    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_83

    :cond_79
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # setter for: Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$1102(Landroid/media/tv/TvInputService$Session;J)J

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # invokes: Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$1200(Landroid/media/tv/TvInputService$Session;J)V

    :cond_83
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
