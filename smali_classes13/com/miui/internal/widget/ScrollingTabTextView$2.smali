.class Lcom/miui/internal/widget/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabTextView.java"


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

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->this$0:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v1

    # setter for: Lcom/miui/internal/widget/ScrollingTabTextView;->mClipPosition:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ScrollingTabTextView;->access$002(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    return-void
.end method
