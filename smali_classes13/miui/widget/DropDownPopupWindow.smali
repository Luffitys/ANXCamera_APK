.class public Lmiui/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownPopupWindow$ListController;,
        Lmiui/widget/DropDownPopupWindow$ViewContentController;,
        Lmiui/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiui/widget/DropDownPopupWindow$ContentController;,
        Lmiui/widget/DropDownPopupWindow$ContainerController;,
        Lmiui/widget/DropDownPopupWindow$Controller;,
        Lmiui/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# static fields
.field private static final DIM:F = 0.3f

.field private static OFFSET_H:I = 0x0

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
    .registers 1

    const/16 v0, 0x28

    sput v0, Lmiui/widget/DropDownPopupWindow;->OFFSET_H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

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

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getAnimationStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->initPopupWindow()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DropDownPopupWindow;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/widget/DropDownPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    return-object v0
.end method

.method private initPopupWindow()V
    .registers 5

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

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v1, v2}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setFocusableInTouchMode(Z)V

    const/4 v1, -0x1

    :try_start_5f
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$attr;->arrowPopupWindowDimColor:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v2
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_69

    move v1, v2

    goto :goto_6a

    :catch_69
    move-exception v2

    :goto_6a
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8e

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_8e

    :cond_82
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :cond_8e
    :goto_8e
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v2, v1}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setBackgroundColor(I)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lmiui/widget/DropDownPopupWindow$3;

    invoke-direct {v3, p0}, Lmiui/widget/DropDownPopupWindow$3;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private realDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onDismiss()V

    :cond_e
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onDismiss()V

    :cond_15
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    return-void
.end method

.method private startAnimation(FFI)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_f

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_4c

    :cond_f
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_23

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2c

    :cond_23
    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_2c
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_34

    int-to-long v1, p3

    goto :goto_36

    :cond_34
    const-wide/16 v1, 0x0

    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4c
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-void
.end method

.method public setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-void
.end method

.method public setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;

    return-void
.end method

.method public show()V
    .registers 10

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_ed

    :cond_14
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_ed

    :cond_1b
    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v2, :cond_37

    invoke-interface {v2}, Lmiui/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_37

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget v4, p0, Lmiui/widget/DropDownPopupWindow;->mElevation:I

    iget v5, p0, Lmiui/widget/DropDownPopupWindow;->mMinWith:I

    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-static {v3, v2, v4, v5, v6}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiui/widget/DropDownPopupWindow$ContainerController;)I

    move-result v0

    :cond_37
    iget v2, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    if-le v0, v2, :cond_3d

    iget v0, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    :cond_3d
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

    if-eqz v2, :cond_58

    invoke-interface {v2}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onShow()V

    :cond_58
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-nez v3, :cond_6e

    const/4 v3, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v3

    :goto_72
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getRealHeight(Landroid/content/Context;Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget v5, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    if-ne v0, v5, :cond_ae

    sget v5, Lmiui/widget/DropDownPopupWindow;->OFFSET_H:I

    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    invoke-static {v6}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_bf

    iget v6, p0, Lmiui/widget/DropDownPopupWindow;->mMaxWith:I

    add-int/2addr v5, v6

    goto :goto_bf

    :cond_ae
    iget-object v5, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getShowX([II)I

    move-result v5

    :cond_bf
    :goto_bf
    iget-object v6, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    iget-object v8, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v4, v8}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->getShowY([II)I

    move-result v8

    invoke-virtual {v6, v7, v1, v5, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    goto :goto_df

    :cond_d3
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    const v5, 0x800033

    invoke-virtual {v3, v4, v5, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    :goto_df
    if-eqz v1, :cond_ed

    const v2, 0x10000008

    invoke-static {v2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_ed

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_ed
    :goto_ed
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;

    if-eqz v0, :cond_fb

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lcom/miui/internal/widget/DropDownPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    :cond_fb
    return-void
.end method
