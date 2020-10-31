.class public Lmiui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# instance fields
.field mIndex:I

.field private mIsNumber:Z

.field mVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iput p2, p0, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    iput-boolean p3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lmiui/maml/data/RootExpression$VarVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lmiui/maml/data/RootExpression$VarVersion;

    iget-boolean v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    iget-boolean v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-ne v2, v3, :cond_15

    iget v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    :cond_16
    return v1
.end method

.method public getVer(Lmiui/maml/data/Variables;)I
    .registers 4

    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget-boolean v1, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    invoke-virtual {p1, v0, v1}, Lmiui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    goto :goto_c

    :cond_7
    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    return v0
.end method
