.class Lmiui/media/LocalAACRecorder;
.super Lmiui/media/LocalMediaRecorder;
.source ""


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

.method public setAudioSource(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioSource(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lmiui/media/LocalMediaRecorder;->setOutputFormat(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lmiui/media/LocalMediaRecorder;->setAudioEncoder(I)V

    return-void
.end method
