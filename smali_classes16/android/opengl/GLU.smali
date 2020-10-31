.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1c

    packed-switch p0, :pswitch_data_20

    const/4 v0, 0x0

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "out of memory"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "stack underflow"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "stack overflow"

    return-object v0

    :pswitch_13
    const-string v0, "invalid operation"

    return-object v0

    :pswitch_16
    const-string v0, "invalid value"

    return-object v0

    :pswitch_19
    const-string v0, "invalid enum"

    return-object v0

    :cond_1c
    const-string/jumbo v0, "no error"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x500
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .registers 23

    sget-object v12, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v12

    const/4 v2, 0x0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_15
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    const/4 v0, 0x0

    move-object v1, p0

    :try_start_1a
    invoke-interface {p0, v12, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    monitor-exit v12

    return-void

    :catchall_1f
    move-exception v0

    goto :goto_23

    :catchall_21
    move-exception v0

    move-object v1, p0

    :goto_23
    monitor-exit v12
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_1f

    throw v0
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 12

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 16

    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    neg-float v8, v0

    mul-float v9, v8, p2

    mul-float v10, v0, p2

    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v8

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .registers 23

    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v7

    const/4 v0, 0x0

    const/16 v8, 0x10

    const/16 v9, 0x14

    const/4 v2, 0x0

    move-object v1, v7

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p3

    move/from16 v6, p4

    :try_start_11
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v1, 0x10

    aput p0, v7, v1

    const/16 v1, 0x11

    aput p1, v7, v1

    const/16 v1, 0x12

    aput p2, v7, v1

    const/16 v1, 0x13

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v1

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v1, v7

    move-object v3, v7

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/16 v1, 0x17

    aget v1, v7, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3d

    const/4 v2, 0x0

    monitor-exit v7

    return v2

    :cond_3d
    div-float v2, v10, v1

    aget v3, p7, p8

    int-to-float v3, v3

    add-int/lit8 v4, p8, 0x2

    aget v4, p7, v4

    int-to-float v4, v4

    const/16 v5, 0x14

    aget v5, v7, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v10

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p9, p10

    add-int/lit8 v3, p10, 0x1

    add-int/lit8 v4, p8, 0x1

    aget v4, p7, v4

    int-to-float v4, v4

    add-int/lit8 v6, p8, 0x3

    aget v6, p7, v6

    int-to-float v6, v6

    const/16 v11, 0x15

    aget v11, v7, v11

    mul-float/2addr v11, v2

    add-float/2addr v11, v10

    mul-float/2addr v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    aput v4, p9, v3

    add-int/lit8 v3, p10, 0x2

    const/16 v4, 0x16

    aget v4, v7, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v10

    mul-float/2addr v4, v5

    aput v4, p9, v3

    monitor-exit v7

    const/4 v0, 0x1

    return v0

    :catchall_79
    move-exception v0

    monitor-exit v7
    :try_end_7b
    .catchall {:try_start_11 .. :try_end_7b} :catchall_79

    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .registers 22

    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v7

    const/4 v0, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object v1, v7

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p3

    move v6, p4

    :try_start_f
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v7, v1, v7, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v1

    if-nez v1, :cond_1d

    monitor-exit v7

    return v2

    :cond_1d
    add-int/lit8 v1, p8, 0x0

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p0, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    add-int/lit8 v4, p8, 0x2

    aget v4, p7, v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    aput v1, v7, v2

    add-int/lit8 v1, p8, 0x1

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v3

    add-int/lit8 v2, p8, 0x3

    aget v2, p7, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    const/4 v10, 0x1

    aput v1, v7, v10

    mul-float v1, p2, v3

    sub-float/2addr v1, v4

    const/4 v2, 0x2

    aput v1, v7, v2

    const/4 v1, 0x3

    aput v4, v7, v1

    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v1, p9

    move/from16 v2, p10

    move-object v3, v7

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    monitor-exit v7

    return v10

    :catchall_5b
    move-exception v0

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_f .. :try_end_5d} :catchall_5b

    throw v0
.end method
