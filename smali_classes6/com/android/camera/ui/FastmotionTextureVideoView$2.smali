.class Lcom/android/camera/ui/FastmotionTextureVideoView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FastmotionTextureVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$2;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$2;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->access$000(Lcom/android/camera/ui/FastmotionTextureVideoView;)Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$2;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->access$000(Lcom/android/camera/ui/FastmotionTextureVideoView;)Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$2;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-static {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->access$200(Lcom/android/camera/ui/FastmotionTextureVideoView;)Landroid/view/Surface;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;->onSurfaceReady(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
