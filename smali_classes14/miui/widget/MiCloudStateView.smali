.class public Lmiui/widget/MiCloudStateView;
.super Landroid/widget/LinearLayout;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudStateView$UpdateStateTask;,
        Lmiui/widget/MiCloudStateView$SyncObserver;,
        Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;,
        Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    }
.end annotation


# static fields
.field private static final SYNC_OBSERVER_MASK:I = 0xd

.field private static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8


# instance fields
.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mCloudCountNormalTextAppearance:I

.field private mCloudStatusDisabledTextAppearance:I

.field private mCloudStatusHighlightTextAppearance:I

.field private mCloudStatusNormalTextAppearance:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mDisabledStatusText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastVisible:I

.field private mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

.field private mMiCloudCountText:Landroid/widget/TextView;

.field private mMiCloudStatusText:Landroid/widget/TextView;

.field private mPendingUpdate:Z

.field private mSyncChangeHandle:Ljava/lang/Object;

.field private mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

.field private mSyncing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MiCloudStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudStateView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    .registers 2

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/widget/MiCloudStateView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    return p1
.end method

.method static synthetic access$302(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$UpdateStateTask;)Lmiui/widget/MiCloudStateView$UpdateStateTask;
    .registers 2

    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/widget/MiCloudStateView;ZZ[I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudStateView;->updateLayout(ZZ[I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/MiCloudStateView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lmiui/widget/MiCloudStateView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    return p1
.end method

.method private getTotalCount([I)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    array-length v1, p1

    if-lez v1, :cond_10

    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_10

    aget v3, p1, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    return v0
.end method

.method private hasCustomView()Z
    .registers 2

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    sget-object v0, Lcom/miui/system/internal/R$styleable;->MiCloudStateView:[I

    sget v1, Lcom/miui/system/internal/R$attr;->cloudStateViewStyle:I

    sget v2, Lmiui/system/R$style;->Widget_MiCloudStateView_Light:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudCountNormalTextAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusNormalTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusHighlightTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusDisabledTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusDisabledTextAppearance:I

    sget v1, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudStatusBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lcom/miui/system/internal/R$styleable;->MiCloudStateView_cloudArrowRight:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/MiCloudStateView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$string;->cloud_state_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lmiui/widget/MiCloudStateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lmiui/widget/MiCloudStateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object p0, v3, v2

    invoke-static {v3}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v3

    new-array v4, v2, [Lmiui/animation/ITouchStyle$TouchType;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v5, v4}, Lmiui/animation/ITouchStyle;->setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;

    move-result-object v3

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v3, p0, v2}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V

    return-void
.end method

.method private updateLayout(ZZ[I)V
    .registers 9

    invoke-direct {p0, p3}, Lmiui/widget/MiCloudStateView;->getTotalCount([I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_2c

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/system/internal/R$dimen;->cloud_btn_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v1, v3, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_78

    :cond_2c
    const/4 v2, 0x0

    if-nez p2, :cond_5c

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/MiCloudStateView;->hasCustomView()Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez v0, :cond_54

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p3}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getUnsyncedCountText(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_78

    :cond_54
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    sget v2, Lcom/miui/system/internal/R$string;->cloud_state_finished:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78

    :cond_5c
    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v3, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lmiui/widget/MiCloudStateView;->hasCustomView()Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    sget v2, Lcom/miui/system/internal/R$string;->cloud_state_syncing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_78
    :goto_78
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_88

    if-lez v0, :cond_88

    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v3, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_8f

    :cond_88
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v3, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_8f
    iget-object v2, p0, Lmiui/widget/MiCloudStateView;->mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    if-eqz v2, :cond_96

    invoke-interface {v2, p1, p2, p3}, Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;->onLayoutUpdate(ZZ[I)V

    :cond_96
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    :cond_e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/miui/system/internal/R$id;->cloud_count:I

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->cloud_status:I

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->custom_view:I

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudCountNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public registerObserver()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    if-nez v0, :cond_11

    const/16 v0, 0xd

    new-instance v1, Lmiui/widget/MiCloudStateView$SyncObserver;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudStateView$SyncObserver;-><init>(Lmiui/widget/MiCloudStateView;)V

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 5

    const/16 v0, 0x8

    if-eqz p1, :cond_22

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    iput v1, p0, Lmiui/widget/MiCloudStateView;->mLastVisible:I

    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    :cond_22
    iget-object v1, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/widget/MiCloudStateView;->mLastVisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_33
    return-void
.end method

.method public setDisabledStatusText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mDisabledStatusText:Ljava/lang/String;

    return-void
.end method

.method public setLayoutUpdateListener(Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mLayoutUpdateListener:Lmiui/widget/MiCloudStateView$ILayoutUpdateListener;

    return-void
.end method

.method public setSyncInfoProvider(Lmiui/widget/MiCloudStateView$ISyncInfoProvider;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    return-void
.end method

.method public setTotalCountText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mMiCloudCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unregisterObserver()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncChangeHandle:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public updateState()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    return-void
.end method

.method public updateState(Z)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/widget/MiCloudStateView$1;

    invoke-direct {v1, p0, p1}, Lmiui/widget/MiCloudStateView$1;-><init>(Lmiui/widget/MiCloudStateView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_15
    invoke-virtual {p0}, Lmiui/widget/MiCloudStateView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    if-eqz p1, :cond_20

    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    :cond_20
    return-void

    :cond_21
    if-nez p1, :cond_28

    iget-boolean v0, p0, Lmiui/widget/MiCloudStateView;->mSyncing:Z

    if-eqz v0, :cond_28

    return-void

    :cond_28
    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    if-nez v0, :cond_3f

    new-instance v0, Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;-><init>(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$1;)V

    iput-object v0, p0, Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_41

    :cond_3f
    iput-boolean v1, p0, Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z

    :goto_41
    return-void

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSyncInfoProvider can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
