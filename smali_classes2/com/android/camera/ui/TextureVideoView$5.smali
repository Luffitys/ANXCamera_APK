.class Lcom/android/camera/ui/TextureVideoView$5;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TextureVideoView;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/TextureVideoView;

.field final synthetic val$extra:I

.field final synthetic val$mp:Landroid/media/MediaPlayer;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView$5;->this$0:Lcom/android/camera/ui/TextureVideoView;

    iput-object p2, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$mp:Landroid/media/MediaPlayer;

    iput p3, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$what:I

    iput p4, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView$5;->this$0:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/TextureVideoView;->access$000(Lcom/android/camera/ui/TextureVideoView;)Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView$5;->this$0:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/TextureVideoView;->access$000(Lcom/android/camera/ui/TextureVideoView;)Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$mp:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$what:I

    iget p0, p0, Lcom/android/camera/ui/TextureVideoView$5;->val$extra:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method
