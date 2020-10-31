.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayAdjustments$FixedRotationAdjustments;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_15
    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    return-void
.end method

.method private noFlip(I)Z
    .registers 5

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method


# virtual methods
.method public adjustMetrics(Landroid/util/DisplayMetrics;I)V
    .registers 6

    invoke-direct {p0, p2}, Landroid/view/DisplayAdjustments;->noFlip(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    return-void
.end method

.method public adjustSize(Landroid/graphics/Point;I)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/view/DisplayAdjustments;->noFlip(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments;

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout;
    .registers 4

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    goto :goto_c

    :cond_b
    move-object v1, p1

    :goto_c
    return-object v1
.end method

.method public getFixedRotationAdjustments()Landroid/view/DisplayAdjustments$FixedRotationAdjustments;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    return-object v0
.end method

.method public getRotation(I)I
    .registers 4

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    if-eqz v0, :cond_7

    iget v1, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    goto :goto_8

    :cond_7
    move v1, p1

    :goto_8
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_1a

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_12
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_19

    :cond_15
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_10

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_a

    move-object v1, p1

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFixedRotationAdjustments(Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)V
    .registers 2

    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mFixedRotationAdjustments:Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    return-void
.end method
