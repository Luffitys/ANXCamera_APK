.class Landroid/widget/Editor$SelectionHandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SelectionHandleView;->fadeIn(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SelectionHandleView;

.field final synthetic val$locationY:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$SelectionHandleView;I)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    iput p2, p0, Landroid/widget/Editor$SelectionHandleView$1;->val$locationY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    # getter for: Landroid/widget/Editor$SelectionHandleView;->mY:I
    invoke-static {v1}, Landroid/widget/Editor$SelectionHandleView;->access$8200(Landroid/widget/Editor$SelectionHandleView;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    iget v3, p0, Landroid/widget/Editor$SelectionHandleView$1;->val$locationY:I

    # setter for: Landroid/widget/Editor$SelectionHandleView;->mY:I
    invoke-static {v1, v3}, Landroid/widget/Editor$SelectionHandleView;->access$8202(Landroid/widget/Editor$SelectionHandleView;I)I

    :cond_1a
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, v1, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/PopupWindow;

    float-to-int v3, v0

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    # getter for: Landroid/widget/Editor$SelectionHandleView;->mY:I
    invoke-static {v4}, Landroid/widget/Editor$SelectionHandleView;->access$8200(Landroid/widget/Editor$SelectionHandleView;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method
