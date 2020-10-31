.class public Lmiui/maml/folme/PropertyWrapper;
.super Ljava/lang/Object;
.source "PropertyWrapper.java"


# instance fields
.field private mDefaultValue:D

.field private mExpression:Lmiui/maml/data/Expression;

.field private mInFolmeMode:Z

.field private mValue:Lmiui/maml/data/IndexedVariable;

.field private mVelocity:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz p4, :cond_27

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mValue:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mVelocity:Lmiui/maml/data/IndexedVariable;

    :cond_27
    iput-object p3, p0, Lmiui/maml/folme/PropertyWrapper;->mExpression:Lmiui/maml/data/Expression;

    iput-wide p5, p0, Lmiui/maml/folme/PropertyWrapper;->mDefaultValue:D

    return-void
.end method


# virtual methods
.method public getValue()D
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mValue:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Lmiui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_16
    return-wide v0
.end method

.method public getVelocity()D
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mVelocity:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mValue:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/folme/PropertyWrapper;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    goto :goto_11

    :cond_f
    iget-wide v1, p0, Lmiui/maml/folme/PropertyWrapper;->mDefaultValue:D

    :goto_11
    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_14
    return-void
.end method

.method public setValue(D)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mValue:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_1f

    :cond_a
    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v1, :cond_18

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    goto :goto_1f

    :cond_18
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-direct {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;-><init>(D)V

    iput-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mExpression:Lmiui/maml/data/Expression;

    :goto_1f
    return-void
.end method

.method public setVelocity(D)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/folme/PropertyWrapper;->mVelocity:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_9
    return-void
.end method
