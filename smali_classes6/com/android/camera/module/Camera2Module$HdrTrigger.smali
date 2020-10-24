.class Lcom/android/camera/module/Camera2Module$HdrTrigger;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HDR_MODE_CHANGE_TIME_INTERVAL:I = 0x320


# instance fields
.field private autoHdrModeChange:Z

.field private hdrModeChangeTime:J

.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field private userSelectedHdrMode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$HdrTrigger;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method private updateHdrModeChangeTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->hdrModeChangeTime:J

    return-void
.end method


# virtual methods
.method public isUpdateHdrTip()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->autoHdrModeChange:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->hdrModeChangeTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x320

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->autoHdrModeChange:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setHdrModeChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->autoHdrModeChange:Z

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module$HdrTrigger;->updateHdrModeChangeTime()V

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cut from HDR_ON to HDR_AUTO\uff0cautoHdrModeChange = true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->autoHdrModeChange:Z

    :goto_0
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$HdrTrigger;->userSelectedHdrMode:Ljava/lang/String;

    return-void
.end method
