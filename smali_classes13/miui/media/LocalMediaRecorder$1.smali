.class Lmiui/media/LocalMediaRecorder$1;
.super Ljava/lang/Object;
.source "LocalMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/LocalMediaRecorder;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/LocalMediaRecorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMediaRecorder;)V
    .registers 2

    iput-object p1, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 7

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    # getter for: Lmiui/media/LocalMediaRecorder;->mRecorderOnErrorListener:Lmiui/media/Recorder$OnErrorListener;
    invoke-static {v0}, Lmiui/media/LocalMediaRecorder;->access$000(Lmiui/media/LocalMediaRecorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lmiui/media/RecorderUtils;->convertErrorCode(IZ)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
