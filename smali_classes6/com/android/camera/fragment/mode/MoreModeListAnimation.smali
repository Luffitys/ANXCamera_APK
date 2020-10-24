.class public Lcom/android/camera/fragment/mode/MoreModeListAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIRECTION_B2T:I = 0x3

.field public static final DIRECTION_L2R:I = 0x0

.field public static final DIRECTION_R2L:I = 0x1

.field public static final DIRECTION_T2B:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = -0x1

.field private static final DISTANCE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MoreModeAnimation"

.field private static sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getCol(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    :cond_0
    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    return-object v0
.end method

.method private getRow(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public startAlphaAnimation(Landroid/view/View;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public startTranAnimation(Landroid/view/View;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getRow(I)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown direction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getRow(I)I

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getCol(I)I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getCol(I)I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MoreModeAnimation"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 p2, 0x0

    const/high16 p3, 0x43960000    # 300.0f

    const/high16 v2, -0x3c6a0000    # -300.0f

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p3, v2

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v2

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :goto_3
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
