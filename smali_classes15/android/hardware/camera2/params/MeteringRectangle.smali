.class public final Landroid/hardware/camera2/params/MeteringRectangle;
.super Ljava/lang/Object;
.source "MeteringRectangle.java"


# static fields
.field public static final METERING_WEIGHT_DONT_CARE:I = 0x0

.field public static final METERING_WEIGHT_MAX:I = 0x3e8

.field public static final METERING_WEIGHT_MIN:I


# instance fields
.field private final mHeight:I

.field private final mWeight:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "x must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    const-string/jumbo v0, "y must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    const-string/jumbo v0, "width must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    const-string v0, "height must be nonnegative"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string v2, "meteringWeight"

    invoke-static {p5, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/util/Size;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "xy must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dimensions must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroid/graphics/Point;->x:I

    const-string/jumbo v1, "x must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    const-string/jumbo v1, "y must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    const-string/jumbo v1, "width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string v0, "meteringWeight must be nonnegative"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rect must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string/jumbo v1, "rect.left must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    const-string/jumbo v1, "rect.top must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string/jumbo v1, "rect.width must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string/jumbo v1, "rect.height must be nonnegative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const-string v0, "meteringWeight must be nonnegative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return-void
.end method


# virtual methods
.method public equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    if-ne v1, v2, :cond_23

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    iget v2, p1, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    if-ne v1, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    return v0
.end method

.method public getMeteringWeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    iget v3, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getUpperLeftPoint()Landroid/graphics/Point;
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    iget v2, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    return v0
.end method

.method public getX()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/MeteringRectangle;->mWeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "(x:%d, y:%d, w:%d, h:%d, wt:%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
