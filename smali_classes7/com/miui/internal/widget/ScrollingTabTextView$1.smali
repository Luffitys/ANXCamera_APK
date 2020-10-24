.class Lcom/miui/internal/widget/ScrollingTabTextView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabTextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/internal/widget/ScrollingTabTextView;->access$002(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
