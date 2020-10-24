.class Lmiui/media/LocalAMRRecorder;
.super Lmiui/media/LocalMediaRecorder;
.source ""


# static fields
.field private static final AMR_NB_HEADER:Ljava/lang/String; = "#!AMR\n"

.field private static final AMR_WB_HEADER:Ljava/lang/String; = "#!AMR-WB\n"


# instance fields
.field private mIsAmrWB:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getHeaderLen()I
    .locals 0

    iget-boolean p0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lmiui/media/LocalMediaRecorder;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioEncoder(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/media/LocalAMRRecorder;->mIsAmrWB:Z

    :cond_1
    :goto_0
    return-void
.end method
