.class Lmiui/media/LocalAMRRecorder;
.super Lmiui/media/LocalMediaRecorder;
.source "LocalAMRRecorder.java"


# static fields
.field private static final AMR_NB_HEADER:Ljava/lang/String; = "#!AMR\n"

.field private static final AMR_WB_HEADER:Ljava/lang/String; = "#!AMR-WB\n"


# instance fields
.field private mIsAmrWB:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected getHeaderLen()I
    .registers 2

    iget-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    if-eqz v0, :cond_7

    const-string v0, "#!AMR-WB\n"

    goto :goto_9

    :cond_7
    const-string v0, "#!AMR\n"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    return-void
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    return-void
.end method

.method public setAudioEncoder(I)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioEncoder(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    goto :goto_f

    :cond_a
    if-ne p1, v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    :cond_f
    :goto_f
    return-void
.end method
