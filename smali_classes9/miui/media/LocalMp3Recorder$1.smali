.class Lmiui/media/LocalMp3Recorder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# instance fields
.field final synthetic this$0:Lmiui/media/LocalMp3Recorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMp3Recorder;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 1

    iget-object p1, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    invoke-static {p1}, Lmiui/media/LocalMp3Recorder;->access$000(Lmiui/media/LocalMp3Recorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lmiui/media/RecorderUtils;->convertErrorCode(IZ)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
