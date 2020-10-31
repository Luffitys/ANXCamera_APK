.class Lmiui/media/LocalAACRecorder;
.super Lmiui/media/LocalMediaRecorder;
.source "LocalAACRecorder.java"


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

.method public setAudioSource(I)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioSource(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lmiui/media/LocalAACRecorder;->setOutputFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/media/LocalAACRecorder;->setAudioEncoder(I)V

    return-void
.end method
