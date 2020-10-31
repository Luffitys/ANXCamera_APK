.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double3;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public static add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .registers 8

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7

    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public add(Landroid/renderscript/Double3;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public addAt(ID)V
    .registers 6

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-void

    :cond_1c
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Double3;D)V
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public copyTo([DI)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    aput-wide v1, p1, v0

    return-void
.end method

.method public div(D)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public div(Landroid/renderscript/Double3;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double3;)D
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .registers 4

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-wide v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-wide v0

    :cond_16
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-wide v0
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public mul(D)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public mul(Landroid/renderscript/Double3;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public negate()V
    .registers 3

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public set(Landroid/renderscript/Double3;)V
    .registers 4

    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public setAt(ID)V
    .registers 6

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    return-void

    :cond_16
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    return-void
.end method

.method public setValues(DDD)V
    .registers 7

    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(D)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method

.method public sub(Landroid/renderscript/Double3;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-void
.end method
