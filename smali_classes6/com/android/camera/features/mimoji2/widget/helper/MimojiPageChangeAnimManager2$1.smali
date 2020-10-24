.class Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

.field final synthetic val$animator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->access$000(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->access$100(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;)Lcom/android/camera/features/mimoji2/widget/MimojiEditGLTextureView2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$1;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->access$000(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
