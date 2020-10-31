.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    if-eqz p2, :cond_45

    array-length v1, p1

    array-length v2, p2

    if-lt v2, v1, :cond_3f

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p0, v2, :cond_1e

    if-eq p0, v3, :cond_1c

    if-eq p0, v4, :cond_1a

    const/4 v2, 0x2

    if-eq p0, v2, :cond_17

    const/4 v2, 0x0

    goto :goto_20

    :cond_17
    const/16 v2, 0x7e

    goto :goto_20

    :cond_1a
    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    const/4 v2, 0x1

    goto :goto_20

    :cond_1e
    const/16 v2, 0x7f

    :goto_20
    new-instance v5, Landroid/icu/text/Bidi;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Landroid/icu/text/Bidi;-><init>(II)V

    invoke-virtual {v5, p1, v2, v0}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v1, :cond_35

    invoke-virtual {v5, v0}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v6

    aput-byte v6, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_35
    invoke-virtual {v5}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_3e

    move v3, v4

    :cond_3e
    return v3

    :cond_3f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_45
    throw v0
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 25

    move/from16 v0, p5

    if-nez v0, :cond_7

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_7
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_e

    const/4 v4, 0x0

    goto :goto_f

    :cond_e
    move v4, v2

    :goto_f
    aget-byte v5, p1, p2

    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v8, p2, 0x1

    add-int v9, p2, v0

    :goto_17
    if-ge v8, v9, :cond_23

    aget-byte v10, p1, v8

    if-eq v10, v5, :cond_20

    move v5, v10

    add-int/lit8 v7, v7, 0x1

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_23
    move/from16 v8, p5

    and-int/lit8 v9, v5, 0x1

    and-int/lit8 v10, v4, 0x1

    if-eq v9, v10, :cond_49

    :goto_2b
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_44

    add-int v9, p4, v8

    aget-char v9, p3, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3a

    add-int/lit8 v8, v8, -0x1

    goto :goto_44

    :cond_3a
    const/16 v10, 0x20

    if-eq v9, v10, :cond_43

    const/16 v10, 0x9

    if-eq v9, v10, :cond_43

    goto :goto_44

    :cond_43
    goto :goto_2b

    :cond_44
    :goto_44
    add-int/2addr v8, v2

    if-eq v8, v0, :cond_49

    add-int/lit8 v7, v7, 0x1

    :cond_49
    if-ne v7, v2, :cond_57

    if-ne v6, v4, :cond_57

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_54

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_54
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    :cond_57
    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    move v10, v6

    shl-int/lit8 v11, v6, 0x1a

    const/4 v12, 0x1

    move/from16 v13, p2

    move v5, v6

    move/from16 v14, p2

    add-int v15, p2, v8

    :goto_66
    if-ge v14, v15, :cond_88

    aget-byte v1, p1, v14

    if-eq v1, v5, :cond_85

    move v5, v1

    if-le v1, v10, :cond_71

    move v10, v1

    goto :goto_74

    :cond_71
    if-ge v1, v6, :cond_74

    move v6, v1

    :cond_74
    :goto_74
    add-int/lit8 v17, v12, 0x1

    sub-int v18, v14, v13

    or-int v18, v18, v11

    aput v18, v9, v12

    add-int/lit8 v12, v17, 0x1

    sub-int v18, v14, p2

    aput v18, v9, v17

    shl-int/lit8 v11, v5, 0x1a

    move v13, v14

    :cond_85
    add-int/lit8 v14, v14, 0x1

    goto :goto_66

    :cond_88
    add-int v1, p2, v8

    sub-int/2addr v1, v13

    or-int/2addr v1, v11

    aput v1, v9, v12

    if-ge v8, v0, :cond_9b

    add-int/2addr v12, v2

    aput v8, v9, v12

    add-int/2addr v12, v2

    sub-int v1, v0, v8

    shl-int/lit8 v14, v4, 0x1a

    or-int/2addr v1, v14

    aput v1, v9, v12

    :cond_9b
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v4, :cond_a7

    add-int/lit8 v6, v6, 0x1

    if-le v10, v6, :cond_a5

    move v1, v2

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    goto :goto_ac

    :cond_a7
    if-le v7, v2, :cond_ab

    move v1, v2

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    if-eqz v1, :cond_f4

    add-int/lit8 v2, v10, -0x1

    :goto_b0
    if-lt v2, v6, :cond_f4

    const/4 v12, 0x0

    :goto_b3
    array-length v13, v9

    if-ge v12, v13, :cond_f1

    aget v13, v9, v12

    aget-byte v13, p1, v13

    if-lt v13, v2, :cond_ee

    add-int/lit8 v13, v12, 0x2

    :goto_be
    array-length v14, v9

    if-ge v13, v14, :cond_ca

    aget v14, v9, v13

    aget-byte v14, p1, v14

    if-lt v14, v2, :cond_ca

    add-int/lit8 v13, v13, 0x2

    goto :goto_be

    :cond_ca
    move v14, v12

    add-int/lit8 v15, v13, -0x2

    :goto_cd
    if-ge v14, v15, :cond_ec

    aget v16, v9, v14

    aget v17, v9, v15

    aput v17, v9, v14

    aput v16, v9, v15

    add-int/lit8 v17, v14, 0x1

    aget v16, v9, v17

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    aget v18, v9, v18

    aput v18, v9, v17

    add-int/lit8 v17, v15, 0x1

    aput v16, v9, v17

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, -0x2

    goto :goto_cd

    :cond_ec
    add-int/lit8 v12, v13, 0x2

    :cond_ee
    add-int/lit8 v12, v12, 0x2

    goto :goto_b3

    :cond_f1
    add-int/lit8 v2, v2, -0x1

    goto :goto_b0

    :cond_f4
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v2
.end method
