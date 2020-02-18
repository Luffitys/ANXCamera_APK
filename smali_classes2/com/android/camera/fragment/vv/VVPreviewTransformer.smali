.class public Lcom/android/camera/fragment/vv/VVPreviewTransformer;
.super Ljava/lang/Object;
.source "VVPreviewTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_ALPHA:F = 1.0f

.field private static final MIN_SCALE:F = 0.92f

.field private static final alphaSlope:F = 0.0f

.field private static final scaleSlope:F = 0.07999998f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 2

    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float v0, p2, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p2, v1

    if-lez p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    const/4 p2, 0x0

    cmpg-float v0, p0, p2

    if-gez v0, :cond_2

    add-float/2addr p0, v1

    goto :goto_1

    :cond_2
    sub-float p0, v1, p0

    :goto_1
    mul-float/2addr p0, p2

    add-float/2addr p0, v1

    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method
