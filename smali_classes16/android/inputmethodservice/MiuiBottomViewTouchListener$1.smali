.class Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;
.super Ljava/lang/Object;
.source "MiuiBottomViewTouchListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/MiuiBottomViewTouchListener;->showSecondGuideAndSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mGuideCirImg:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$500(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    new-instance v2, Landroid/inputmethodservice/InputMethodGuidePopupView;

    iget-object v3, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$700(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x110e00c2

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodGuidePopupView;-><init>(Landroid/content/Context;I)V

    # setter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;
    invoke-static {v0, v2}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$602(Landroid/inputmethodservice/MiuiBottomViewTouchListener;Landroid/inputmethodservice/InputMethodGuidePopupView;)Landroid/inputmethodservice/InputMethodGuidePopupView;

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sInputMethodGuidePopupView2:Landroid/inputmethodservice/InputMethodGuidePopupView;
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$600(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/inputmethodservice/InputMethodGuidePopupView;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mBottomView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$800(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/inputmethodservice/InputMethodGuidePopupView;->show(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$1;->this$0:Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$700(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "move_cursor_guide_view_show2"

    invoke-static {v0, v2}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addMoveCursorRecord(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3e
    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sInputMethodBottomSeekBar:Landroid/inputmethodservice/InputMethodBottomSeekBar;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodBottomSeekBar;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
