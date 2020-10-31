.class public Lmiui/maml/util/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/maml/util/Utils$Point;->x:D

    iput-wide p3, p0, Lmiui/maml/util/Utils$Point;->y:D

    return-void
.end method


# virtual methods
.method public Offset(Lmiui/maml/util/Utils$Point;)V
    .registers 6

    iget-wide v0, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v2, p1, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v0, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v2, p1, Lmiui/maml/util/Utils$Point;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/util/Utils$Point;->y:D

    return-void
.end method

.method minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;
    .registers 9

    new-instance v0, Lmiui/maml/util/Utils$Point;

    iget-wide v1, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v3, p1, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v5, p1, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method
