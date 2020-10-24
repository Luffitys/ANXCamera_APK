.class public LOooO0O0/OooO00o/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o([BLjava/lang/String;IIIFIFIFFFIIII)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v6, Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    move/from16 v10, p3

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v10, v0

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez v2, :cond_0

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_0
    if-ne v2, v11, :cond_1

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :goto_1
    and-int/lit8 v12, p6, 0x10

    const/16 v13, 0x10

    if-ne v12, v13, :cond_2

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_2
    and-int/lit8 v12, p6, 0x20

    const/16 v13, 0x20

    if-ne v12, v13, :cond_3

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_3
    and-int/lit8 v12, p6, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    move/from16 v12, p5

    neg-float v12, v12

    const/high16 v13, 0x42b40000    # 90.0f

    div-float/2addr v12, v13

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_4
    and-int/lit8 v12, p6, 0x8

    const/16 v13, 0x8

    if-ne v12, v13, :cond_5

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_5
    and-int/lit8 v12, p6, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    move/from16 v12, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v13, p12

    invoke-virtual {v9, v12, v14, v15, v13}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_6
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    iget v13, v12, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v12, v12, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    sub-float/2addr v14, v13

    div-float/2addr v12, v15

    sub-float/2addr v14, v12

    float-to-int v12, v14

    and-int/lit8 v13, p6, 0x1

    const/16 v15, 0x15

    if-ne v13, v11, :cond_e

    new-instance v13, Landroid/text/TextPaint;

    invoke-direct {v13}, Landroid/text/TextPaint;-><init>()V

    move/from16 v14, p8

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextSize()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float v14, v14, p7

    div-float/2addr v14, v10

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v13, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    int-to-float v14, v1

    div-float/2addr v14, v10

    if-lt v5, v15, :cond_9

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    if-nez v2, :cond_7

    iget v14, v7, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v14, v14

    int-to-float v15, v12

    invoke-virtual {v4, v6, v14, v15, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_7
    if-ne v2, v11, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    goto :goto_2

    :cond_8
    iget v14, v7, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_9
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v6, v8, v15, v14}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move v15, v8

    move/from16 v16, v15

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v15, v8, :cond_b

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v11, 0xd800

    if-le v8, v11, :cond_a

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    :cond_a
    const/4 v8, 0x1

    add-int/2addr v15, v8

    move v11, v8

    goto :goto_3

    :cond_b
    if-nez v2, :cond_c

    const/4 v8, 0x0

    :goto_4
    int-to-float v11, v12

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move/from16 p7, v8

    move/from16 p8, v11

    move-object/from16 p9, v13

    move/from16 p10, p4

    invoke-static/range {p5 .. p10}, LOooO0O0/OooO00o/OooO0O0/OooO00o;->OooO0O0(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)I

    goto :goto_5

    :cond_c
    const/4 v8, 0x1

    if-ne v2, v8, :cond_d

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v11, v14

    mul-int v16, v16, v0

    add-int v11, v11, v16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v8

    mul-int v8, v1, v14

    sub-int/2addr v11, v8

    const/4 v8, 0x2

    div-int/2addr v11, v8

    int-to-float v8, v11

    goto :goto_4

    :cond_d
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v8, v11

    mul-int v16, v16, v0

    add-int v8, v8, v16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    mul-int/2addr v11, v1

    sub-int/2addr v8, v11

    int-to-float v8, v8

    goto :goto_4

    :cond_e
    :goto_5
    int-to-float v8, v1

    div-float/2addr v8, v10

    const/16 v10, 0x15

    if-lt v5, v10, :cond_11

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    if-nez v2, :cond_f

    iget v0, v7, Landroid/graphics/Rect;->left:I

    :goto_6
    int-to-float v0, v0

    int-to-float v1, v12

    invoke-virtual {v4, v6, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_f
    const/4 v0, 0x1

    if-ne v2, v0, :cond_10

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    goto :goto_6

    :cond_10
    iget v0, v7, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_11
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10, v8, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move v8, v10

    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_13

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v13, 0xd800

    if-le v11, v13, :cond_12

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_12
    const/4 v11, 0x1

    add-int/2addr v8, v11

    goto :goto_7

    :cond_13
    if-nez v2, :cond_14

    const/4 v0, 0x0

    :goto_8
    int-to-float v2, v12

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move/from16 p7, v0

    move/from16 p8, v2

    move-object/from16 p9, v9

    move/from16 p10, p4

    invoke-static/range {p5 .. p10}, LOooO0O0/OooO00o/OooO0O0/OooO00o;->OooO0O0(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)I

    goto :goto_a

    :cond_14
    const/4 v8, 0x1

    if-ne v2, v8, :cond_15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    mul-int/2addr v10, v0

    add-int/2addr v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    mul-int/2addr v0, v1

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    div-int/2addr v2, v0

    goto :goto_9

    :cond_15
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    mul-int/2addr v10, v0

    add-int/2addr v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    mul-int/2addr v0, v1

    sub-int/2addr v2, v0

    :goto_9
    int-to-float v0, v2

    goto :goto_8

    :goto_a
    const/16 v0, 0x1f

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    return-object v3
.end method

.method private static OooO0O0(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)I
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "the text space is: %d\n"

    invoke-virtual {v1, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "the text length is: %d\n"

    invoke-virtual {v1, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v1, v5

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    const v7, 0xd800

    if-le v4, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p4, p1, v1, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v7, p5, 0x2

    add-int/2addr v6, v7

    int-to-float v7, v6

    add-float/2addr p2, v7

    add-int/2addr v3, v6

    if-eqz p0, :cond_5

    :goto_2
    invoke-virtual {p0, v4, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_1
    const/16 v7, 0x20

    if-ne v4, v7, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p5

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p4, p1, v1, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/16 v7, 0x80

    if-ge v4, v7, :cond_4

    invoke-static {v6}, LOooO0O0/OooO00o/OooO0O0/OooO00o;->OooO0OO(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, p5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v8, v5

    const-string v4, "%s is NumOrLetters\n"

    invoke-virtual {v7, v4, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v6, p5, 0x2

    add-int/2addr v4, v6

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v7, p5, 0x2

    add-int/2addr v6, v7

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v8, v5

    const-string v4, "%s is not NumOrLetters\n"

    invoke-virtual {v7, v4, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_3
    move v4, v6

    :goto_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "%s is: %d, space is: %d, text is %d\n"

    invoke-virtual {v6, v8, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_5
    int-to-float v6, v4

    add-float/2addr p2, v6

    add-int/2addr v3, v4

    if-eqz p0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_5
    :goto_6
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_6
    return v3
.end method

.method public static OooO0OO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-Za-z0-9_]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
