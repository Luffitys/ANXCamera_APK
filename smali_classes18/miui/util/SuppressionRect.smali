.class public Lmiui/util/SuppressionRect;
.super Ljava/lang/Object;
.source "SuppressionRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SuppressionRect$bottompRightHalfRect;,
        Lmiui/util/SuppressionRect$bottomLeftHalfRect;,
        Lmiui/util/SuppressionRect$topRightHalfRect;,
        Lmiui/util/SuppressionRect$topLeftHalfRect;,
        Lmiui/util/SuppressionRect$RightBottomHalfRect;,
        Lmiui/util/SuppressionRect$LeftBottomHalfRect;,
        Lmiui/util/SuppressionRect$RightTopHalfRect;,
        Lmiui/util/SuppressionRect$LeftTopHalfRect;
    }
.end annotation


# static fields
.field private static final NODE_DEFAULT:I

.field private static final TIME_DEFAULT:I


# instance fields
.field private bottomRightX:I

.field private bottomRightY:I

.field private list:Ljava/util/ArrayList;

.field private node:I

.field private position:I

.field private time:I

.field private topLeftX:I

.field private topLeftY:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method


# virtual methods
.method public getBottomRightX()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    return v0
.end method

.method public getBottomRightY()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_d
    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNode()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->node:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->position:I

    return v0
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->time:I

    return v0
.end method

.method public getTopLeftX()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    return v0
.end method

.method public getTopLeftY()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/util/SuppressionRect;->type:I

    return v0
.end method

.method public setBottomRightX(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    return-void
.end method

.method public setBottomRightY(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    return-void
.end method

.method public setEmpty()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setTopLeftX(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setTopLeftY(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setBottomRightX(I)V

    invoke-virtual {p0, v0}, Lmiui/util/SuppressionRect;->setBottomRightY(I)V

    return-void
.end method

.method public setNode(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->position:I

    return-void
.end method

.method public setTime(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->time:I

    return-void
.end method

.method public setTopLeftX(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    return-void
.end method

.method public setTopLeftY(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    return-void
.end method

.method public setValue(IIIIII)V
    .registers 8

    iput p1, p0, Lmiui/util/SuppressionRect;->type:I

    iput p2, p0, Lmiui/util/SuppressionRect;->position:I

    iput p3, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    iput p4, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    iput p5, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    iput p6, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SuppressionRect;->time:I

    iput v0, p0, Lmiui/util/SuppressionRect;->node:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuppressionRect{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/SuppressionRect;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topLeftX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topLeftY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->topLeftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRightX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRightY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->bottomRightY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SuppressionRect;->node:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
