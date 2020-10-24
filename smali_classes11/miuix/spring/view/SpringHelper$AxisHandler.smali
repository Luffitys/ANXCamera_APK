.class abstract Lmiuix/spring/view/SpringHelper$AxisHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DRAG_RATE:F = 0.5f

.field private static final INVERSE_DRAG_RATE:F = 2.0f

.field private static final SQUARE1:F = 0.33333334f

.field private static final SQUARE2:F = 0.6666667f


# instance fields
.field mAllDistance:F

.field mAmount:I

.field mAxis:I

.field mDistance:F

.field final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    return-void
.end method

.method private obtainSpringBackDistance(F)F
    .locals 6

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-float p1, v4

    mul-float/2addr p1, p0

    return p1
.end method

.method private overScrollWeight()F
    .locals 4

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    div-float/2addr p0, v0

    return p0
.end method

.method private pull(I[IZ)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz p3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    move-result v0

    mul-float/2addr p3, v0

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    goto :goto_0

    :cond_0
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->onFlingReachEdge()V

    :cond_1
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    add-float/2addr p3, v1

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    move-result v0

    mul-float/2addr p3, v0

    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    :goto_0
    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget p3, p2, p0

    add-int/2addr p3, p1

    aput p3, p2, p0

    :cond_2
    return-void
.end method

.method private release(I[IZ)I
    .locals 6

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    int-to-float v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz p3, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v4, p2, v3

    sub-int v5, p1, p1

    add-int/2addr v4, v5

    aput v4, p2, v3

    :cond_0
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    iget v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    if-nez p3, :cond_1

    iput v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    :cond_1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aput p1, p2, v0

    goto :goto_0

    :cond_2
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v2, p2, p1

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    aput v0, p2, p1

    :goto_0
    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    :cond_3
    if-nez p3, :cond_4

    iget p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-direct {p0, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    move-result p2

    mul-float/2addr p1, p2

    iput p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    :cond_4
    return v1
.end method

.method private unObtainSpringBackDistance(F)F
    .locals 7

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->getSize()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p0

    div-float/2addr v0, v1

    const v2, 0x3eaaaaab

    cmpg-float v0, v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    if-gtz v0, :cond_1

    int-to-double v3, p0

    const-wide v5, 0x3fe5555560000000L    # 0.6666666865348816

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    float-to-double p0, v1

    const-wide v0, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v5, p0

    sub-double/2addr v3, v5

    double-to-float p0, v3

    return p0

    :cond_1
    mul-float/2addr p1, v2

    return p1
.end method


# virtual methods
.method protected abstract canScroll()Z
.end method

.method protected abstract getSize()I
.end method

.method handleNestedPreScroll([I[IZ)Z
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    aget v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->canScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    mul-int/2addr v2, v0

    if-lez v2, :cond_1

    return v1

    :cond_1
    iget v1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    invoke-direct {p0, v0, p2, p3}, Lmiuix/spring/view/SpringHelper$AxisHandler;->release(I[IZ)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method handleNestedScroll(I[II[I)V
    .locals 0
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p2}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p4, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;->pull(I[IZ)V

    :cond_1
    return-void
.end method

.method abstract onFlingReachEdge()V
.end method
