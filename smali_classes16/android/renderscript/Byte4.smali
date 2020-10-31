.class public Landroid/renderscript/Byte4;
.super Ljava/lang/Object;
.source "Byte4.java"


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public static add(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)B
    .registers 5

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static mul(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .registers 4

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .registers 5

    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public add(Landroid/renderscript/Byte4;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public addAt(IB)V
    .registers 5

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    :cond_21
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    :cond_28
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Byte4;B)V
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public copyTo([BI)V
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public div(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public div(Landroid/renderscript/Byte4;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte4;)B
    .registers 5

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public elementSum()B
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    return v0

    :cond_19
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    return v0

    :cond_1c
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    return v0
.end method

.method public length()B
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public mul(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public mul(Landroid/renderscript/Byte4;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public negate()V
    .registers 2

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public set(Landroid/renderscript/Byte4;)V
    .registers 3

    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public setAt(IB)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iput-byte p2, p0, Landroid/renderscript/Byte4;->w:B

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-byte p2, p0, Landroid/renderscript/Byte4;->z:B

    return-void

    :cond_19
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    return-void

    :cond_1c
    iput-byte p2, p0, Landroid/renderscript/Byte4;->x:B

    return-void
.end method

.method public setValues(BBBB)V
    .registers 5

    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public sub(B)V
    .registers 3

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method

.method public sub(Landroid/renderscript/Byte4;)V
    .registers 4

    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    return-void
.end method
