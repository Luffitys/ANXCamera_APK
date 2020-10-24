.class Lcom/miui/internal/widget/ArrowPopupView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->access$902(Lcom/miui/internal/widget/ArrowPopupView;I)I

    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->access$900(Lcom/miui/internal/widget/ArrowPopupView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v2}, Lcom/miui/internal/widget/ArrowPopupView;->access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lcom/miui/internal/widget/ArrowPopupView;->access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView$7;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p0}, Lcom/miui/internal/widget/ArrowPopupView;->access$1000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    return-void
.end method
