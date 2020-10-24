.class public Lmiui/media/RecorderFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecorder(I)Lmiui/media/Recorder;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance p0, Lmiui/media/LocalAACRecorder;

    invoke-direct {p0}, Lmiui/media/LocalAACRecorder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lmiui/media/LocalWavRecorder;

    invoke-direct {p0}, Lmiui/media/LocalWavRecorder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lmiui/media/LocalAMRRecorder;

    invoke-direct {p0}, Lmiui/media/LocalAMRRecorder;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lmiui/media/LocalMp3Recorder;

    invoke-direct {p0}, Lmiui/media/LocalMp3Recorder;-><init>()V

    goto :goto_0

    :cond_4
    new-instance p0, Lmiui/media/LocalAACRecorder;

    invoke-direct {p0}, Lmiui/media/LocalAACRecorder;-><init>()V

    :goto_0
    return-object p0
.end method
