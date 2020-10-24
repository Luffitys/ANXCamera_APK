.class public Lcom/miui/internal/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/miui/internal/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarLocation:I

.field private mActionBarTopMargin:I

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mAnchorView:Ljava/lang/ref/WeakReference;

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;

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

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewSet:Z

.field private mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

.field private mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mStatusBarPaddingTop:I

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const p2, 0x10102eb

    invoke-static {p1, p2}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarHeight:I

    new-instance p2, Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-direct {p2}, Lcom/miui/internal/widget/SearchActionModeViewHelper;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {p2, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->getAnimatedPaddingTop(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I

    iget-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {p2, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->getAnimatedPaddingHorizontal(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingRight:I

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/SearchActionModeView;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return p0
.end method

.method static synthetic access$1302(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return p0
.end method

.method static synthetic access$1402(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return p0
.end method

.method static synthetic access$1602(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return p0
.end method

.method static synthetic access$1702(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/SearchActionModeView;)Lcom/miui/internal/widget/SearchActionModeViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputPaddingRight:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p1
.end method

.method private getContentView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMessageQueue()Landroid/os/MessageQueue;
    .locals 0

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p0

    return-object p0
.end method

.method private queueIdleHandler()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private removeIdleHandler()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private shouldAnimateContent()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->pollViews()V

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->createAnimationListeners()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    return-void
.end method

.method public closeMode()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected createAnimationListeners()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method protected getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object p0
.end method

.method public getAnimationProgress()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    return p0
.end method

.method protected getDimView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/internal/R$id;->search_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_1

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    instance-of v3, v2, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method protected getViewPager()Lmiui/view/ViewPager;
    .locals 1

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/internal/R$id;->view_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiui/view/ViewPager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public killMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->finishAnimation()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "AnimationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lmiui/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    :goto_0
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/miui/internal/widget/SearchActionModeView$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/SearchActionModeView$1;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    :goto_3
    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->killMode()V

    :cond_5
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/internal/R$id;->search_mask:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->performCancelViewClick()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->initView(Landroid/view/ViewGroup;)V

    const v0, 0x1020009

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget p2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->queueIdleHandler()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected pollViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    return-void
.end method

.method public queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p0, 0x0

    return p0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method protected setContentViewPadding(II)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr p2, p0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected setContentViewTranslation(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSearchActionModeViewHelper:Lcom/miui/internal/widget/SearchActionModeViewHelper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeViewHelper;->setCancelViewClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setOverlayMode(Z)V
    .locals 0

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    :cond_0
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method public setStatusBarPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    return-void
.end method
