.class Lmiui/media/LocalMp3Recorder;
.super Lmiui/media/Mp3Recorder;
.source "LocalMp3Recorder.java"

# interfaces
.implements Lmiui/media/Recorder;


# instance fields
.field private mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/media/Mp3Recorder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/media/LocalMp3Recorder;)Lmiui/media/Recorder$OnErrorListener;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalMp3Recorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setAudioEncoder(I)V
    .registers 2

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    return-void
.end method

.method public setMaxDuration(I)V
    .registers 4

    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Lmiui/media/Mp3Recorder;->setMaxDuration(J)V

    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .registers 3

    iput-object p1, p0, Lmiui/media/LocalMp3Recorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;

    new-instance v0, Lmiui/media/LocalMp3Recorder$1;

    invoke-direct {v0, p0}, Lmiui/media/LocalMp3Recorder$1;-><init>(Lmiui/media/LocalMp3Recorder;)V

    invoke-super {p0, v0}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    return-void
.end method

.method public setOutputFormat(I)V
    .registers 2

    return-void
.end method
