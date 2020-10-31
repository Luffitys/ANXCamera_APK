.class public Landroid/service/autofill/InlineSuggestionRoot;
.super Landroid/widget/FrameLayout;
.source "InlineSuggestionRoot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineSuggestionRoot"


# instance fields
.field private final mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private mDownX:F

.field private mDownY:F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/autofill/InlineSuggestionRoot;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_16

    goto :goto_57

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    :cond_16
    iget v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    iget v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-eqz v1, :cond_39

    iget v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_57

    :cond_39
    :try_start_39
    iget-object v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4e} :catch_4f

    goto :goto_57

    :catch_4f
    move-exception v2

    const-string v3, "InlineSuggestionRoot"

    const-string v4, "RemoteException transferring touch focus to IME"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
