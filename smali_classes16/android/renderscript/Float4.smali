.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float4;->x:F

    iput p2, p0, Landroid/renderscript/Float4;->y:F

    iput p3, p0, Landroid/renderscript/Float4;->z:F

    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .registers 5

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iget v2, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iget v2, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    iget v2, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public add(Landroid/renderscript/Float4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public addAt(IF)V
    .registers 5

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    return-void

    :cond_1f
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    return-void

    :cond_25
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Float4;F)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public copyTo([FI)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    aput v1, p1, v0

    return-void
.end method

.method public div(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public div(Landroid/renderscript/Float4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float4;)F
    .registers 5

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public elementSum()F
    .registers 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    return v0
.end method

.method public get(I)F
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    return v0

    :cond_19
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    return v0

    :cond_1c
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    return v0
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mul(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public set(Landroid/renderscript/Float4;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public setAt(IF)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iput p2, p0, Landroid/renderscript/Float4;->w:F

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    return-void

    :cond_19
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    return-void

    :cond_1c
    iput p2, p0, Landroid/renderscript/Float4;->x:F

    return-void
.end method

.method public setValues(FFFF)V
    .registers 5

    iput p1, p0, Landroid/renderscript/Float4;->x:F

    iput p2, p0, Landroid/renderscript/Float4;->y:F

    iput p3, p0, Landroid/renderscript/Float4;->z:F

    iput p4, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public sub(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    return-void
.end method
