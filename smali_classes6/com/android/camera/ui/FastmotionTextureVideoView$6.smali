.class Lcom/android/camera/ui/FastmotionTextureVideoView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FastmotionTextureVideoView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    iput p2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->val$width:I

    iput p3, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->val$width:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->val$height:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$6;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setVideoSpecifiedSize(II)V

    :cond_1
    :goto_0
    return-void
.end method
