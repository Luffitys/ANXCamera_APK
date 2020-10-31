.class Landroid/inputmethodservice/InputMethodServiceInjector$5;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->handleMoveCursorGuideViewShow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->hideMoveCursorGuideView(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$3300()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sGuideRecImg:Landroid/view/View;
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$3300()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
