.class Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iput p2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$what:I

    iput p3, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$000(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$what:I

    iget p0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$extra:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onErrorBackgroundThread(II)V

    return-void
.end method
