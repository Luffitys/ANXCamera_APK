.class public Lcom/miui/mishare/app/view/MiShareDeviceView;
.super Landroid/widget/LinearLayout;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
    }
.end annotation


# static fields
.field private static final ANIM_SHOW_HIDE:I = 0x1f4

.field public static final DEVICE_STATUS_FAILED:I = 0x3

.field public static final DEVICE_STATUS_IDLE:I = 0x1

.field public static final DEVICE_STATUS_SENDING:I = 0x2

.field public static final DEVICE_STATUS_SUCCESS:I = 0x4

.field public static final DEVICE_STATUS_WAITING:I = 0x5

.field public static final TYPE_BLACKSHARK:I = 0x5

.field public static final TYPE_MEIZU:I = 0x6

.field public static final TYPE_ONEPLUS:I = 0x7

.field public static final TYPE_OPPO:I = 0x3

.field public static final TYPE_REALME:I = 0x4

.field public static final TYPE_VIVO:I = 0x2

.field public static final TYPE_XIAOMI:I = 0x1


# instance fields
.field private mCurrentStatus:I

.field private mDeviceIcon:Landroid/view/View;

.field private mDeviceIconInner:Landroid/view/View;

.field private mDeviceModelNameTv:Landroid/widget/TextView;

.field private mDeviceNameTv:Landroid/widget/TextView;

.field private mLogoIv:Landroid/widget/ImageView;

.field private mLogoView:Landroid/view/View;

.field private mPcView:Landroid/view/View;

.field private mPhoneView:Landroid/view/View;

.field private mStatusIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    return-void
.end method

.method private animHide(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$2;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$3;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2b
    return-void

    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animShow(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$1;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_25
    return-void

    :array_26
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initView()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b003a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x110900a9

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v0, 0x1109007f

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const v0, 0x110900d0

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const v0, 0x110900cf

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    const v0, 0x11090071

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v0, 0x110900d9

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    const v0, 0x11090073

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    const v0, 0x11090072

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v0, 0x110900aa

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/FolmeUtils;->handleTouchOf(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private setDeviceSending()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$4;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$4;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_ba

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8f

    const/4 v2, 0x5

    if-eq p1, v2, :cond_63

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    if-eqz p4, :cond_18

    move-object v3, p3

    goto :goto_23

    :cond_18
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110e0102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11050084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_110

    :cond_56
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_110

    :cond_63
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_110

    :cond_8f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_110

    :cond_ba
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_110

    :cond_e5
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    nop

    :goto_110
    return-void
.end method

.method private setDeviceWaiting()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$5;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$5;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private showFailureStatus()V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$1;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x11070110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showIDLEStatus()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimStatus()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    return-void
.end method

.method private showSendingStatus()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceSending()V

    return-void
.end method

.method private showSuccessStatus()V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$1;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x11070111

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showWaitingStatus()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceWaiting()V

    return-void
.end method

.method private stopAnimStatus()V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_20

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_20
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    if-nez p2, :cond_6

    move-object v1, p1

    goto :goto_17

    :cond_6
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0089

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDevicePhoneOrPc(Z)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_10

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_10
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1a
    return-void
.end method

.method public setDeviceStatus(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 7

    iget v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceModelName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    if-eq v1, v0, :cond_37

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    if-eq v0, v4, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    goto :goto_37

    :cond_24
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showWaitingStatus()V

    goto :goto_37

    :cond_28
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSuccessStatus()V

    goto :goto_37

    :cond_2c
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showFailureStatus()V

    goto :goto_37

    :cond_30
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSendingStatus()V

    goto :goto_37

    :cond_34
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showIDLEStatus()V

    :cond_37
    :goto_37
    return-void
.end method

.method public setDeviceType(I)V
    .registers 4

    const v0, 0x11070032

    packed-switch p1, :pswitch_data_8a

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_89

    :pswitch_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_26
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_37
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_48
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11070030

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_59
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_6a
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x11070031

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    :pswitch_7b
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_6a
        :pswitch_59
        :pswitch_48
        :pswitch_37
        :pswitch_26
        :pswitch_15
    .end packed-switch
.end method
