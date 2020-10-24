.class Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$3;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2$3;->this$0:Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;->access$200(Lcom/android/camera/features/mimoji2/widget/helper/MimojiPageChangeAnimManager2;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
