.class public Lcom/miui/internal/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/miui/internal/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarLocation:I

.field private mActionBarTopMargin:I

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mDimView:Landroid/view/View;

.field private mInputPaddingRight:I

.field private mInputPaddingTop:I

.field private mInputView:Landroid/widget/EditText;

.field private mInputViewTranslationYLength:I

.field private mInputViewTranslationYStart:I

.field private mLocation:[I

.field private mOriginalPaddingTop:I

.field private mRequestAnimation:Z

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewSet:Z

.field private mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

.field private mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mStatusBarPaddingTop:I

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    const v0, 0x10102eb

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarHeight:I

    new-instance v0, Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-direct {v0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->getAnimatedPaddingTop(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->getAnimatedPaddingHorizontal(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingRight:I

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/SearchActionModeView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p1
.end method

.method private getContentView()Landroid/view/View;
    .registers 3

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_e

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMessageQueue()Landroid/os/MessageQueue;
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method private queueIdleHandler()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private removeIdleHandler()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private shouldAnimateContent()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_9
    if-nez v1, :cond_1c

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_29

    :cond_1c
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v0, :cond_29

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->pollViews()V

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->createAnimationListeners()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    :cond_1c
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->requestLayout()V

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    goto :goto_30

    :cond_2b
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_30
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_49
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_8
    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    return-void
.end method

.method public closeMode()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method protected createAnimationListeners()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method protected finishAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_a
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_50

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_29

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_29

    move-object v3, v2

    check-cast v3, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    goto :goto_2c

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v1, :cond_50

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    :cond_50
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_14

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_14

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method public getAnimationProgress()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    return v0
.end method

.method protected getDimView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v0, :cond_12

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_12

    sget v1, Lcom/miui/internal/R$id;->search_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2a

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_27

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_27

    move-object v3, v2

    check-cast v3, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getViewPager()Lmiui/view/ViewPager;
    .registers 4

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget v2, Lcom/miui/internal/R$id;->view_pager:I

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager;

    return-object v2

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public killMode()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->finishAnimation()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_1c
    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    const-string v1, "AnimationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_23

    const-wide/16 v1, 0x190

    goto :goto_25

    :cond_23
    const-wide/16 v1, 0x0

    :goto_25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_32
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_24

    :cond_1b
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    :goto_24
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    goto :goto_36

    :cond_2e
    new-instance v0, Lcom/miui/internal/widget/SearchActionModeView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/SearchActionModeView$1;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->post(Ljava/lang/Runnable;)Z

    :goto_36
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_5a

    :cond_4c
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_56

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :goto_5a
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_68

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->killMode()V

    :cond_68
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v1, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    goto :goto_1a

    :cond_d
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/internal/R$id;->search_mask:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->performCancelViewClick()V

    :cond_d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->initView(Landroid/view/ViewGroup;)V

    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    :cond_2b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1f
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->queueIdleHandler()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    :cond_25
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected pollViews()V
    .registers 1

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method public queueIdle()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method protected setContentViewPadding(II)V
    .registers 8

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    return-void
.end method

.method protected setContentViewTranslation(I)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_a
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->setCancelViewClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setOverlayMode(Z)V
    .registers 3

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    :cond_22
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    goto :goto_1c

    :cond_18
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    :goto_1c
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2e
    return-void
.end method

.method public setStatusBarPaddingTop(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    return-void
.end method
