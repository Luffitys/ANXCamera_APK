.class Lmiui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iput p2, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [D

    if-eqz v1, :cond_14

    check-cast v0, [D

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_13

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    goto :goto_4a

    :cond_14
    instance-of v1, v0, [F

    if-eqz v1, :cond_25

    check-cast v0, [F

    const/4 v1, 0x0

    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_24

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_24
    goto :goto_4a

    :cond_25
    instance-of v1, v0, [I

    if-eqz v1, :cond_36

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_2c
    array-length v2, v0

    if-ge v1, v2, :cond_35

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_35
    goto :goto_4a

    :cond_36
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_3e
    array-length v3, v0

    if-ge v1, v3, :cond_46

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_46
    goto :goto_4a

    :cond_47
    invoke-virtual {p0, v2}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :goto_4a
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iget v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method
