.class Lcom/android/internal/app/PlatLogoActivity$BigDialView;
.super Landroid/widget/ImageView;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BigDialView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;
    }
.end annotation


# static fields
.field private static final COLOR_BLUE:I = -0xbd7a0c

.field private static final COLOR_CHARTREUSE:I = -0x100831

.field private static final COLOR_GREEN:I = -0xc2237c

.field private static final COLOR_LIGHTBLUE:I = -0x281002

.field private static final COLOR_NAVY:I = -0xf8cfbe

.field private static final COLOR_ORANGE:I = -0x798cc

.field private static final STEPS:I = 0xb

.field private static final VALUE_CHANGE_MAX:F = 0.09090909f


# instance fields
.field private mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

.field private mWasLocked:Z

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->init()V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->init()V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;-><init>(Lcom/android/internal/app/PlatLogoActivity$BigDialView;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v0, 0x0

    return v0

    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mWasLocked:Z

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v2

    if-eq v0, v2, :cond_23

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v2

    # invokes: Lcom/android/internal/app/PlatLogoActivity;->launchNextStage(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/app/PlatLogoActivity;->access$000(Lcom/android/internal/app/PlatLogoActivity;Z)V

    :cond_23
    return v1

    :cond_24
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->isLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mWasLocked:Z

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float v4, v0, v3

    float-to-double v6, v4

    sub-float v4, v2, v5

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->toPositiveDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v6}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->touchAngle(F)V

    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v7}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v7

    if-eq v6, v7, :cond_79

    const/16 v8, 0xb

    if-ne v7, v8, :cond_75

    const/16 v8, 0x10

    goto :goto_76

    :cond_75
    const/4 v8, 0x4

    :goto_76
    invoke-virtual {p0, v8}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->performHapticFeedback(I)Z

    :cond_79
    return v1
.end method

.method public performClick()Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->getUserLevel()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->setUserLevel(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->performHapticFeedback(I)Z

    :cond_19
    return v1
.end method

.method setUnlockTries(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BigDialView;->mDialDrawable:Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/PlatLogoActivity$BigDialView$BigDialDrawable;->setUnlockTries(I)V

    return-void
.end method

.method toPositiveDegrees(D)D
    .registers 9

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v0, v4

    rem-double/2addr v0, v2

    return-wide v0
.end method
