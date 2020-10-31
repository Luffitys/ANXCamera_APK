.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# instance fields
.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long4;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public static add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .registers 8

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7

    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public add(Landroid/renderscript/Long4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public addAt(IJ)V
    .registers 6

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-void

    :cond_1f
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-void

    :cond_25
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Long4;J)V
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public copyTo([JI)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    aput-wide v1, p1, v0

    return-void
.end method

.method public div(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public div(Landroid/renderscript/Long4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long4;)J
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .registers 4

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-wide v0

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-wide v0

    :cond_19
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-wide v0

    :cond_1c
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    return-wide v0
.end method

.method public length()J
    .registers 3

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public mod(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mod(Landroid/renderscript/Long4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mul(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public mul(Landroid/renderscript/Long4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public negate()V
    .registers 3

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public set(Landroid/renderscript/Long4;)V
    .registers 4

    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public setAt(IJ)V
    .registers 6

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    return-void

    :cond_19
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    return-void

    :cond_1c
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

    return-void
.end method

.method public setValues(JJJJ)V
    .registers 9

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public sub(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method

.method public sub(Landroid/renderscript/Long4;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-void
.end method
