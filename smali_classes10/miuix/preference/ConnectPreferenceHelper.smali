.class public Lmiuix/preference/ConnectPreferenceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BACKGROUND_ANIM_FACTOR:F = 1.5f

.field public static final BACKGROUND_ANIM_TIME:I = 0x12c

.field private static final STATE_ATTR_CONNECTED:[I

.field private static final STATE_ATTR_DISCONNECTED:[I

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ConnectPreferenceHelper"


# instance fields
.field private BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

.field private bgDrawableConnected:Landroid/graphics/drawable/Drawable;

.field private connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private iconColorList:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

.field private mIconAnimEnabled:Z

.field private mLastState:I

.field private mPreference:Landroidx/preference/Preference;

.field private mState:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetView:Landroid/view/View;

.field private summaryColorList:Landroid/content/res/ColorStateList;

.field private titleColorList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lmiuix/preference/R$attr;->state_connected:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    new-array v0, v0, [I

    neg-int v1, v2

    aput v1, v0, v3

    sput-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_title_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 10

    sget v0, Lmiuix/preference/R$drawable;->miuix_preference_ic_bg_connect:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    sget v0, Lmiuix/preference/R$id;->anim_preference_connecting:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lmiuix/preference/R$id;->shape_preference_connected:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_title_connected_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget-object v2, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    sget v3, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget-object v3, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    sget v4, Lmiuix/preference/R$color;->miuix_preference_connect_summary_connected_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v3, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget-object v4, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    sget v5, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget-object v5, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_connected_color:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    aput v4, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    new-instance v6, Lmiuix/preference/ConnectPreferenceHelper$1;

    invoke-direct {v6, p0}, Lmiuix/preference/ConnectPreferenceHelper$1;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v5, [I

    aput p1, v4, v7

    aput v0, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$2;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$2;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v5, [I

    aput v1, p1, v7

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$3;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$3;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v5, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$4;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$4;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$5;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$5;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static setAlphaFolme(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    new-array v0, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v4, v0, v2

    invoke-interface {v1, v3, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private startConnectedToDisConnectedAnim()V
    .locals 2

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startDisConnectedToConnectedAnim()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateState(Z)V
    .locals 2

    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnecting(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnected(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateDisconnected(Z)V

    :goto_0
    return-void
.end method

.method private updateStateConnected(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startDisConnectedToConnectedAnim()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    :goto_0
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateConnecting(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    :cond_1
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateDisconnected(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startConnectedToDisConnectedAnim()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    :cond_3
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateViewColorList([I)V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateWidgetDrawable([I)V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    if-ne p1, v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    sget p1, Lmiuix/preference/R$drawable;->miuix_preference_ic_detail_connected:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->connectDetailDisconnectedDrawable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getConnectState()I
    .locals 0

    iget p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->BgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    const p2, 0x1020010

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    sget p2, Lmiuix/preference/R$id;->preference_detail:I

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->setAlphaFolme(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConnectState(I)V
    .locals 1

    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    return-void
.end method

.method public setIconAnimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return-void
.end method
