.class public Lcom/android/camera/effect/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# static fields
.field public static final DIR:Ljava/lang/String; = "shading_script"

.field public static final NO_TEXTURE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Camera_ShaderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ES20_ERROR: op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Camera_ShaderUtil"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/android/camera/effect/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    const-string v1, "Camera_ShaderUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to init vertex shader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const p0, 0x8b30

    invoke-static {p0, p1}, Lcom/android/camera/effect/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to init fragment shader "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/android/camera/effect/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v3}, Lcom/android/camera/effect/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    invoke-static {p1, v5, v4, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v2

    if-eq v4, v3, :cond_2

    const-string v3, "Could not link program: "

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move p1, v2

    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return p1
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shading_script/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "\\r\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera_ShaderUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method

.method public static loadYuvImageTextures(IIII[I)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    array-length v1, p4

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    aget v1, p4, v0

    const v2, 0x84c0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0xde1

    if-ne v1, v3, :cond_1

    invoke-static {v4, p4, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, p4, v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, p4, v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->texChannelY(III)V

    const/16 p2, 0x2800

    const v0, 0x46180400    # 9729.0f

    invoke-static {v5, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    invoke-static {v5, v1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2803

    invoke-static {v5, v7, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v8, p4, v4

    const v9, 0x84c1

    if-ne v8, v3, :cond_2

    invoke-static {v4, p4, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget p4, p4, v4

    invoke-static {v5, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    :cond_2
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget p4, p4, v4

    invoke-static {v5, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_1
    shr-int/2addr p0, v4

    shr-int/2addr p1, v4

    invoke-static {p0, p1, p3}, Lcom/android/camera/effect/ShaderNativeUtil;->texChannelUV(III)V

    invoke-static {v5, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v5, v1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v5, v7, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid output texture size "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    array-length v0, p4

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera_ShaderUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V
    .locals 17

    move-object/from16 v9, p4

    const-string v0, "Camera_ShaderUtil"

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    if-eqz v9, :cond_4

    array-length v2, v9

    const/4 v10, 0x2

    if-ge v2, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    aget v0, v9, v1

    const v2, 0x84c0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v13, 0xde1

    if-ne v0, v11, :cond_2

    invoke-static {v12, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, v9, v1

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1909

    const/4 v5, 0x0

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, v9, v1

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1909

    const/4 v5, 0x0

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_0
    const/16 v0, 0x2800

    const v14, 0x46180400    # 9729.0f

    invoke-static {v13, v0, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v15, 0x2801

    invoke-static {v13, v15, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2802

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v13, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    invoke-static {v13, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v1, v9, v12

    const v2, 0x84c1

    if-ne v1, v11, :cond_3

    invoke-static {v12, v9, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v1, v9, v12

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x190a

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x190a

    const/16 v11, 0x1401

    move v12, v6

    move v6, v9

    move v9, v7

    move v7, v10

    move v10, v8

    move v8, v11

    move v11, v9

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto :goto_1

    :cond_3
    move v11, v7

    move v7, v8

    move v8, v6

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v1, v9, v12

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x190a

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    const/4 v6, 0x0

    const/16 v9, 0x190a

    const/16 v10, 0x1401

    move v12, v7

    move v7, v9

    move v9, v8

    move v8, v10

    move v10, v9

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    invoke-static {v13, v0, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v13, v15, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v13, v12, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v13, v10, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid output texture size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    array-length v1, v9

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_7

    const-string v2, "Y"

    goto :goto_5

    :cond_7
    const-string v2, "UV"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
