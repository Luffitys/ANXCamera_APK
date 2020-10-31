.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method private static native native_create(JZ)J
.end method

.method private static native native_destroy(J)V
.end method

.method private static native native_getLength(J)F
.end method

.method private static native native_getMatrix(JFJI)Z
.end method

.method private static native native_getPosTan(JF[F[F)Z
.end method

.method private static native native_getSegment(JFFJZ)Z
.end method

.method private static native native_isClosed(J)Z
.end method

.method private static native native_nextContour(J)Z
.end method

.method private static native native_setPath(JJZ)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method public getLength()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result v0

    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .registers 10

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result v0

    return v0
.end method

.method public getPosTan(F[F[F)Z
    .registers 6

    const/4 v0, 0x2

    if-eqz p2, :cond_6

    array-length v1, p2

    if-lt v1, v0, :cond_c

    :cond_6
    if-eqz p3, :cond_12

    array-length v1, p3

    if-lt v1, v0, :cond_c

    goto :goto_12

    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_12
    :goto_12
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    move-result v0

    return v0
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .registers 13

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    const/4 p1, 0x0

    :cond_a
    cmpl-float v1, p2, v0

    if-lez v1, :cond_f

    move p2, v0

    :cond_f
    cmpl-float v1, p1, p2

    if-ltz v1, :cond_15

    const/4 v1, 0x0

    return v1

    :cond_15
    iget-wide v1, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p3}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v5

    move v3, p1

    move v4, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    move-result v1

    return v1
.end method

.method public isClosed()Z
    .registers 3

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result v0

    return v0
.end method

.method public nextContour()Z
    .registers 3

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result v0

    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .registers 7

    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    :goto_d
    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    return-void
.end method
