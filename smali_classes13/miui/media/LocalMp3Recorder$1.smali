.class Lmiui/media/LocalMp3Recorder$1;
.super Ljava/lang/Object;
.source "LocalMp3Recorder.java"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/LocalMp3Recorder;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/LocalMp3Recorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMp3Recorder;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .registers 6

    iget-object v0, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    # getter for: Lmiui/media/LocalMp3Recorder;->mOnErrorListener:Lmiui/media/Recorder$OnErrorListener;
    invoke-static {v0}, Lmiui/media/LocalMp3Recorder;->access$000(Lmiui/media/LocalMp3Recorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/LocalMp3Recorder$1;->this$0:Lmiui/media/LocalMp3Recorder;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lmiui/media/RecorderUtils;->convertErrorCode(IZ)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
