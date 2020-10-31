.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 14

    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    new-instance v2, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v2, p1, p2, v1}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v2
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v4, :cond_6e

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v5}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v5}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {v5}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    :goto_41
    if-ge v6, v4, :cond_5d

    array-length v7, v2

    sub-int v8, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v2, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v7, :cond_55

    invoke-virtual {v5, v2, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v7

    goto :goto_41

    :cond_55
    new-instance v3, Ljava/io/IOException;

    const-string v8, "Unable to read PKM file data."

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v3, v0, v1, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v3

    :cond_66
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a PKM file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to read PKM file header."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static isETC1Supported()Z
    .registers 6

    const/16 v0, 0x14

    new-array v0, v0, [I

    const v1, 0x86a2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    array-length v3, v0

    if-le v1, v3, :cond_12

    new-array v0, v1, [I

    :cond_12
    const v3, 0x86a3

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_27

    aget v4, v0, v3

    const v5, 0x8d64

    if-ne v4, v5, :cond_24

    const/4 v2, 0x1

    return v2

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_27
    return v2
.end method

.method public static loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .registers 28

    move/from16 v9, p4

    const/16 v0, 0x1907

    move/from16 v10, p3

    if-ne v10, v0, :cond_82

    const v0, 0x8363

    const/16 v1, 0x1401

    if-eq v9, v0, :cond_1a

    if-ne v9, v1, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported fallbackType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v19

    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v20

    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual/range {v21 .. v21}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const v13, 0x8d64

    move/from16 v11, p0

    move/from16 v12, p1

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, p2

    move/from16 v17, v0

    move-object/from16 v18, v21

    invoke-static/range {v11 .. v18}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_81

    :cond_45
    if-eq v9, v1, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    move v11, v0

    if-eqz v11, :cond_4f

    const/4 v0, 0x2

    goto :goto_50

    :cond_4f
    const/4 v0, 0x3

    :goto_50
    move v12, v0

    mul-int v13, v12, v19

    mul-int v0, v13, v20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v2, v21

    move-object v3, v14

    move/from16 v4, v19

    move/from16 v5, v20

    move v6, v12

    move v7, v13

    invoke-static/range {v2 .. v7}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v14

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_81
    return-void

    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fallbackFormat must be GL_RGB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadTexture(IIIIILjava/io/InputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    return-void
.end method

.method public static writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :try_start_8
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    const/16 v6, 0x1000

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v6, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {v2, v3}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v4

    const/4 v8, 0x0

    :goto_31
    if-ge v8, v4, :cond_42

    array-length v9, v6

    sub-int v10, v4, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v0, v6, v7, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v6, v7, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_47

    add-int/2addr v8, v9

    goto :goto_31

    :cond_42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    nop

    return-void

    :catchall_47
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v2
.end method
