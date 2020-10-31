.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "Int4.java"


# instance fields
.field public w:I

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

    iput p1, p0, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->z:I

    iput p1, p0, Landroid/renderscript/Int4;->y:I

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    iput p2, p0, Landroid/renderscript/Int4;->y:I

    iput p3, p0, Landroid/renderscript/Int4;->z:I

    iput p4, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .registers 5

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    iget v2, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    iget v2, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    iget v2, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5

    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public add(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public addAt(II)V
    .registers 5

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    return-void

    :cond_1f
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    return-void

    :cond_25
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Int4;I)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public copyTo([II)V
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    aput v1, p1, v0

    return-void
.end method

.method public div(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public div(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int4;)I
    .registers 5

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    return v0

    :cond_19
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    return v0

    :cond_1c
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    return v0
.end method

.method public length()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mod(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public negate()V
    .registers 2

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public set(Landroid/renderscript/Int4;)V
    .registers 3

    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public setAt(II)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iput p2, p0, Landroid/renderscript/Int4;->w:I

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    return-void

    :cond_19
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    return-void

    :cond_1c
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    return-void
.end method

.method public setValues(IIII)V
    .registers 5

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    iput p2, p0, Landroid/renderscript/Int4;->y:I

    iput p3, p0, Landroid/renderscript/Int4;->z:I

    iput p4, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public sub(I)V
    .registers 3

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int4;)V
    .registers 4

    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    return-void
.end method
