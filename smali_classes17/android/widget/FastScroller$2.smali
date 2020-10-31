.class Landroid/widget/FastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    # getter for: Landroid/widget/FastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Landroid/widget/FastScroller;->access$100(Landroid/widget/FastScroller;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Landroid/widget/FastScroller;->mShowingPrimary:Z
    invoke-static {v0, v1}, Landroid/widget/FastScroller;->access$102(Landroid/widget/FastScroller;Z)Z

    return-void
.end method
