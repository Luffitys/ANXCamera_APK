.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final mCol:I

.field final mRow:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return-void
.end method

.method static fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .registers 9

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    and-int/lit8 v1, p0, 0x7

    aget v1, v0, v1

    and-int/lit8 v2, p1, 0x20

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    const/4 v2, 0x0

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_17

    or-int/lit8 v2, v2, 0x2

    :cond_17
    and-int/lit8 v3, p1, 0x10

    const/4 v4, 0x7

    if-eqz v3, :cond_28

    shr-int/lit8 v3, p1, 0x1

    and-int/2addr v3, v4

    new-instance v4, Landroid/media/Cea608CCParser$PAC;

    mul-int/lit8 v5, v3, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v4

    :cond_28
    shr-int/lit8 v3, p1, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_30

    const/4 v3, 0x0

    or-int/lit8 v2, v2, 0x1

    :cond_30
    new-instance v4, Landroid/media/Cea608CCParser$PAC;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5, v2, v3}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v4

    nop

    :array_38
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method getCol()I
    .registers 2

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return v0
.end method

.method getRow()I
    .registers 2

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return v0
.end method

.method isIndentPAC()Z
    .registers 2

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "{%d, %d}, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
