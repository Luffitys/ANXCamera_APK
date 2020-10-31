.class Lcom/android/internal/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OpReorderer$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_1c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    if-eqz v0, :cond_19

    return v1

    :cond_18
    const/4 v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_9

    add-int/lit8 v0, v0, -0x1

    :cond_9
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1e

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_1e
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2b

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_2b
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    iget v1, v7, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    goto :goto_37

    :cond_19
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_37

    :cond_23
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_37

    :cond_2d
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    nop

    :goto_37
    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    const/4 v2, 0x0

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v5, :cond_2d

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    const/4 v1, 0x1

    goto :goto_2d

    :cond_1b
    const/4 v2, 0x1

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_2d

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    :goto_2d
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3a

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_59

    :cond_3a
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_59

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iput v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v3, :cond_58

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :cond_58
    return-void

    :cond_59
    :goto_59
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v5, :cond_65

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v3, v4

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_87

    :cond_65
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_87

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v5

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v7, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v4

    const/4 v4, 0x0

    invoke-interface {v5, v6, v7, v3, v4}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_87
    :goto_87
    if-eqz v1, :cond_95

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v3, p3}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_95
    if-eqz v2, :cond_ce

    if-eqz v0, :cond_b3

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_a6

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_a6
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_b3

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_b3
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_c0

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_c0
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_104

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_104

    :cond_ce
    if-eqz v0, :cond_ea

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_dd

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_dd
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_ea

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_ea
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_f7

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_f7
    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_104

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_104
    :goto_104
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_111

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    :cond_111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_114
    if-eqz v0, :cond_119

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_119
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v2, v3, :cond_10

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_28

    :cond_10
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_28

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    :cond_28
    :goto_28
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v3, :cond_34

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v5

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_55

    :cond_34
    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_55

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v6, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iget-object v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v2, v5}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    iget v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_55
    :goto_55
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_60

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_60
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {v2, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    :goto_68
    if-eqz v0, :cond_6d

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6d
    if-eqz v1, :cond_72

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_72
    return-void
.end method
