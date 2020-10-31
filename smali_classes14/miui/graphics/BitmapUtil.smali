.class public Lmiui/graphics/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final COLOR_BYTE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BitmapUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuffer(Landroid/graphics/Bitmap;)[B
    .registers 17

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const-string v3, "BitmapUtil"

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_8a

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit8 v14, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    div-int/lit8 v15, v0, 0x4

    :try_start_1e
    new-array v0, v14, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v0

    move v8, v15

    move v11, v4

    move v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    new-array v5, v5, [B

    move-object v1, v5

    const/4 v5, 0x0

    :goto_34
    array-length v6, v0

    if-ge v5, v6, :cond_69

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    aget v7, v0, v5

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    mul-int/lit8 v6, v5, 0x4

    aget v7, v0, v5

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v2

    aget v7, v0, v5

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6
    :try_end_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_66} :catch_6a

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_69
    goto :goto_87

    :catch_6a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get buffer, baseWidth = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", baseHeight = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_87
    move-object/from16 v2, p0

    goto :goto_b5

    :cond_8a
    :try_start_8a
    const-class v0, Landroid/graphics/Bitmap;

    const-string v4, "mBuffer"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_95} :catch_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8a .. :try_end_95} :catch_a3

    move-object/from16 v2, p0

    :try_start_97
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9d} :catch_a1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_97 .. :try_end_9d} :catch_9f

    move-object v1, v4

    :goto_9e
    goto :goto_b5

    :catch_9f
    move-exception v0

    goto :goto_a6

    :catch_a1
    move-exception v0

    goto :goto_af

    :catch_a3
    move-exception v0

    move-object/from16 v2, p0

    :goto_a6
    const-string v4, "failed to get Bitmap.mBuffer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5

    :catch_ac
    move-exception v0

    move-object/from16 v2, p0

    :goto_af
    const-string v4, "get Bitmap.mBuffer failed!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    :goto_b5
    return-object v1
.end method
