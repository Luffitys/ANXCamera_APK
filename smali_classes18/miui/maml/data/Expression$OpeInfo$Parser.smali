.class public Lmiui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .registers 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    const/4 v2, 0x0

    :goto_5
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v3

    if-ge v2, v3, :cond_12

    iget-object v3, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    iput v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    iput v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_56

    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_26

    goto :goto_53

    :cond_26
    # getter for: Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v6, v7, :cond_4f

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4f

    iget v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_44

    goto :goto_45

    :cond_44
    move v5, v1

    :goto_45
    iget-object v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v6, v3

    const/4 v2, 0x1

    if-eqz v5, :cond_4e

    iput v3, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_4e
    goto :goto_53

    :cond_4f
    iget-object v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v0, v5, v3

    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_56
    if-eqz v2, :cond_5d

    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/2addr v0, v5

    iput v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    :cond_5d
    return v2
.end method

.method public getMatch()Lmiui/maml/data/Expression$Ope;
    .registers 3

    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    goto :goto_10

    :cond_8
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    iget v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object v0, v0, v1

    :goto_10
    return-object v0
.end method
