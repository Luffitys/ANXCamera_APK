.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "Short4.java"


# instance fields
.field public w:S

.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    iput-short p1, p0, Landroid/renderscript/Short4;->z:S

    iput-short p1, p0, Landroid/renderscript/Short4;->y:S

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    return-void
.end method

.method public constructor <init>(SSSS)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public static add(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static add(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)S
    .registers 5

    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    iget-short v2, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    iget-short v2, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    iget-short v2, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static mod(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4

    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short4;)V
    .registers 4

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public add(S)V
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public addAt(IS)V
    .registers 5

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    return-void

    :cond_21
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    return-void

    :cond_28
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Short4;S)V
    .registers 5

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public copyTo([SI)V
    .registers 5

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    aput-short v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    aput-short v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    aput-short v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    aput-short v1, p1, v0

    return-void
.end method

.method public div(Landroid/renderscript/Short4;)V
    .registers 4

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public div(S)V
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short4;)S
    .registers 5

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public elementSum()S
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    return v0

    :cond_19
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    return v0

    :cond_1c
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    return v0
.end method

.method public length()S
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mod(Landroid/renderscript/Short4;)V
    .registers 4

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mod(S)V
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mul(Landroid/renderscript/Short4;)V
    .registers 4

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public mul(S)V
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public negate()V
    .registers 2

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public set(Landroid/renderscript/Short4;)V
    .registers 3

    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public setAt(IS)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iput-short p2, p0, Landroid/renderscript/Short4;->w:S

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-short p2, p0, Landroid/renderscript/Short4;->z:S

    return-void

    :cond_19
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    return-void

    :cond_1c
    iput-short p2, p0, Landroid/renderscript/Short4;->x:S

    return-void
.end method

.method public setValues(SSSS)V
    .registers 5

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public sub(Landroid/renderscript/Short4;)V
    .registers 4

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method

.method public sub(S)V
    .registers 3

    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    return-void
.end method
