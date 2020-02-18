.class Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager$2;
.super Ljava/lang/Object;
.source "MimojiPageChangeAnimManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->translateYTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->mLocationTextureView:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->access$000(Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    iget-object v2, v0, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->mLocationTextureView:[I

    aget v1, v2, v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->access$100(Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;)Lcom/android/camera/ui/MimojiEditGLTextureView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->access$000(Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
