.class public Lmiui/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DIM:F = 0.3f

.field private static OFFSET_H:I = 0x28

.field private static final TAG:Ljava/lang/String; = "DropDownPopupWindow"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

.field private mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

.field private mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissDuration:I

.field private mDismissPending:Z

.field private mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

.field private mElevation:I

.field private mMaxWith:I

.field private mMinWith:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRealContainerView:Landroid/view/View;

.field private mShowDuration:I

.field private mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->mShowDuration:I

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissDuration:I

    new-instance v0, Lmiui/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$1;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lmiui/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$2;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getAnimationStyle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->initPopupWindow()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lmiui/widget/DropDownPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    return p0
.end method

.method static synthetic access$600(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    return-object p0
.end method

.method private initPopupWindow()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->mElevation:I

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getPopupMinWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->mMinWith:I

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lmiui/widget/DropDownPopupWindow;->OFFSET_H:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$attr;->arrowPopupWindowDimColor:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_dark:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_light:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lmiui/widget/DropDownPopupWindow$3;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownPopupWindow$3;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private realDismiss()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_2
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    return-void
.end method

.method private startAnimation(FFI)V
    .locals 4

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    sget-boolean p2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p2, :cond_3

    int-to-long p2, p3

    goto :goto_1

    :cond_3
    const-wide/16 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-void
.end method

.method public setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-void
.end method

.method public setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lmiui/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget v3, p0, Lmiui/widget/DropDownPopupWindow;->mElevation:I

    iget v4, p0, Lmiui/widget/DropDownPopupWindow;->mMinWith:I

    iget-object v5, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiui/widget/DropDownPopupWindow$ContainerController;)I

    move-result v0

    :cond_2
    iget v2, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getRealContentView(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lmiui/widget/DropDownPopupWindow$4;

    invoke-direct {v3, p0}, Lmiui/widget/DropDownPopupWindow$4;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lmiui/widget/DropDownPopupWindow$Controller;->onShow()V

    :cond_4
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getRealHeight(Landroid/content/Context;Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget v3, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    if-ne v0, v3, :cond_6

    sget v0, Lmiui/widget/DropDownPopupWindow;->OFFSET_H:I

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-static {v3}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    add-int/2addr v0, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getShowX([II)I

    move-result v0

    :cond_7
    :goto_1
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    iget-object v5, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getShowY([II)I

    move-result v2

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    const v3, 0x800033

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_9

    const v1, 0x10000008

    invoke-static {v1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_9
    :goto_3
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x3e99999a    # 0.3f

    invoke-static {p0, v0}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    :cond_a
    return-void
.end method
