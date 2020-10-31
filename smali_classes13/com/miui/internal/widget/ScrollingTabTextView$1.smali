.class Lcom/miui/internal/widget/ScrollingTabTextView$1;
.super Ljava/lang/Object;
.source "ScrollingTabTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabTextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/miui/internal/widget/ScrollingTabTextView;->mClipPosition:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ScrollingTabTextView;->access$002(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->invalidate()V

    return-void
.end method
