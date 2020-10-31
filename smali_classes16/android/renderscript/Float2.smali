.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float2;->x:F

    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public static add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .registers 5

    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    iget v2, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public add(Landroid/renderscript/Float2;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public addAt(IF)V
    .registers 5

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Float2;F)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public copyTo([FI)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    aput v1, p1, v0

    return-void
.end method

.method public div(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public div(Landroid/renderscript/Float2;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float2;)F
    .registers 5

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public elementSum()F
    .registers 3

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public get(I)F
    .registers 4

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    return v0

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    return v0
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public mul(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public mul(Landroid/renderscript/Float2;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public set(Landroid/renderscript/Float2;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public setAt(IF)V
    .registers 5

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    return-void
.end method

.method public setValues(FF)V
    .registers 3

    iput p1, p0, Landroid/renderscript/Float2;->x:F

    iput p2, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public sub(F)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method

.method public sub(Landroid/renderscript/Float2;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    return-void
.end method
