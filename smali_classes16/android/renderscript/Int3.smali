.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    iput p2, p0, Landroid/renderscript/Int3;->y:I

    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int3;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .registers 5

    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    iget v2, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    iget v2, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5

    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public add(Landroid/renderscript/Int3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public addAt(II)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    return-void

    :cond_1c
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Int3;I)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public copyTo([II)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    aput v1, p1, v0

    return-void
.end method

.method public div(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public div(Landroid/renderscript/Int3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int3;)I
    .registers 5

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .registers 4

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    return v0

    :cond_16
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    return v0
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public mod(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public set(Landroid/renderscript/Int3;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public setAt(II)V
    .registers 5

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    iput p2, p0, Landroid/renderscript/Int3;->z:I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    return-void

    :cond_16
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    return-void
.end method

.method public setValues(III)V
    .registers 4

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    iput p2, p0, Landroid/renderscript/Int3;->y:I

    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int3;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method
