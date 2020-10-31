.class Lmiui/view/MiuiKeyBoardView$3;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$3;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView$3;->this$0:Lmiui/view/MiuiKeyBoardView;

    # getter for: Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v1}, Lmiui/view/MiuiKeyBoardView;->access$200(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
