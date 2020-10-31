.class public Lmiui/media/RecorderFactory;
.super Ljava/lang/Object;
.source "RecorderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/RecorderFactory$AudioFormat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecorder(I)Lmiui/media/Recorder;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    new-instance v0, Lmiui/media/LocalAACRecorder;

    invoke-direct {v0}, Lmiui/media/LocalAACRecorder;-><init>()V

    goto :goto_33

    :cond_15
    new-instance v0, Lmiui/media/LocalWavRecorder;

    invoke-direct {v0}, Lmiui/media/LocalWavRecorder;-><init>()V

    goto :goto_33

    :cond_1b
    new-instance v0, Lmiui/media/LocalMediaRecorder;

    invoke-direct {v0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    goto :goto_33

    :cond_21
    new-instance v0, Lmiui/media/LocalAMRRecorder;

    invoke-direct {v0}, Lmiui/media/LocalAMRRecorder;-><init>()V

    goto :goto_33

    :cond_27
    new-instance v0, Lmiui/media/LocalMp3Recorder;

    invoke-direct {v0}, Lmiui/media/LocalMp3Recorder;-><init>()V

    goto :goto_33

    :cond_2d
    new-instance v0, Lmiui/media/LocalAACRecorder;

    invoke-direct {v0}, Lmiui/media/LocalAACRecorder;-><init>()V

    nop

    :goto_33
    return-object v0
.end method
