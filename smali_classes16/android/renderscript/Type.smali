.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# static fields
.field static final mMaxArrays:I = 0x4


# instance fields
.field mArrays:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .registers 13

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1f

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_1f
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .registers 14

    const/4 v0, 0x1

    if-lt p2, v0, :cond_23

    if-lt p3, v0, :cond_23

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_23
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .registers 15

    const/4 v0, 0x1

    if-lt p2, v0, :cond_27

    if-lt p3, v0, :cond_27

    if-lt p4, v0, :cond_27

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iput p2, v2, Landroid/renderscript/Type;->mDimX:I

    iput p3, v2, Landroid/renderscript/Type;->mDimY:I

    iput p4, v2, Landroid/renderscript/Type;->mDimZ:I

    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_27
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method calcElementCount()V
    .registers 10

    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x6

    :cond_18
    if-nez v1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-nez v2, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    if-nez v3, :cond_21

    const/4 v3, 0x1

    :cond_21
    mul-int v5, v1, v2

    mul-int/2addr v5, v3

    mul-int/2addr v5, v4

    :goto_25
    if-eqz v0, :cond_40

    const/4 v6, 0x1

    if-gt v1, v6, :cond_2e

    if-gt v2, v6, :cond_2e

    if-le v3, v6, :cond_40

    :cond_2e
    if-le v1, v6, :cond_32

    shr-int/lit8 v1, v1, 0x1

    :cond_32
    if-le v2, v6, :cond_36

    shr-int/lit8 v2, v2, 0x1

    :cond_36
    if-le v3, v6, :cond_3a

    shr-int/lit8 v3, v3, 0x1

    :cond_3a
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    goto :goto_25

    :cond_40
    iget-object v6, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v6, :cond_50

    const/4 v6, 0x0

    :goto_45
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v8, v7

    if-ge v6, v8, :cond_50

    aget v7, v7, v6

    mul-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    :cond_50
    iput v5, p0, Landroid/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public getArray(I)I
    .registers 4

    if-ltz p1, :cond_12

    const/4 v0, 0x4

    if-ge p1, v0, :cond_12

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_10

    array-length v1, v0

    if-lt p1, v1, :cond_d

    goto :goto_10

    :cond_d
    aget v0, v0, p1

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0

    :cond_12
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArrayCount()I
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_6

    array-length v0, v0

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .registers 2

    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .registers 2

    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .registers 2

    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method updateFromNative()V
    .registers 8

    const/4 v0, 0x6

    new-array v0, v0, [J

    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v2, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    move v1, v2

    :cond_36
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4d

    new-instance v3, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v1, v2, v4}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v3, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->updateFromNative()V

    :cond_4d
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    return-void
.end method
