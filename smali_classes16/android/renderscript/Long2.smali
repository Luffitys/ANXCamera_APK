.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "Long2.java"


# instance fields
.field public x:J

.field public y:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long2;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long2;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public static add(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static add(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)J
    .registers 8

    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7

    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public add(Landroid/renderscript/Long2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public addAt(IJ)V
    .registers 6

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    return-void
.end method

.method public addMultiple(Landroid/renderscript/Long2;J)V
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public copyTo([JI)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    aput-wide v1, p1, v0

    return-void
.end method

.method public div(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public div(Landroid/renderscript/Long2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long2;)J
    .registers 8

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .registers 4

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-wide v0

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    return-wide v0
.end method

.method public length()J
    .registers 3

    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public mod(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mod(Landroid/renderscript/Long2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mul(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public mul(Landroid/renderscript/Long2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public negate()V
    .registers 3

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public set(Landroid/renderscript/Long2;)V
    .registers 4

    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public setAt(IJ)V
    .registers 6

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iput-wide p2, p0, Landroid/renderscript/Long2;->y:J

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-wide p2, p0, Landroid/renderscript/Long2;->x:J

    return-void
.end method

.method public setValues(JJ)V
    .registers 5

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public sub(J)V
    .registers 5

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method

.method public sub(Landroid/renderscript/Long2;)V
    .registers 6

    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-void
.end method
