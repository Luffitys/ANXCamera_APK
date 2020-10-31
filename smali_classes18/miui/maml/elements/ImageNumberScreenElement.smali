.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageNumberScreenElement$CharName;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"

.field public static final TAG_NAME1:Ljava/lang/String; = "ImageChars"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNameMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ImageNumberScreenElement$CharName;",
            ">;"
        }
    .end annotation
.end field

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:D

.field private mPreStr:Ljava/lang/String;

.field private mSpace:I

.field private mSpaceExpression:Lmiui/maml/data/Expression;

.field private mStrExpression:Lmiui/maml/data/Expression;

.field private mStrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 13

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string v0, "ImageNumberScreenElement"

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "space"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    const-string v0, "charNameMap"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_57
    if-ge v4, v2, :cond_71

    aget-object v5, v1, v4

    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/maml/elements/ImageNumberScreenElement$CharName;-><init>(Lmiui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_71
    return-void
.end method

.method private charToStr(C)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    iget-char v2, v1, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    if-ne v2, p1, :cond_1b

    iget-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    return-object v0

    :cond_1b
    goto :goto_8

    :cond_1c
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_23

    const-string v0, "dot"

    return-object v0

    :cond_23
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doTick(J)V
    .registers 21

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    iget-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_23

    iget-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    if-nez v1, :cond_23

    iget-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-nez v1, :cond_23

    iget-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_22

    iput-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    iget-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    :cond_22
    return-void

    :cond_23
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_48

    invoke-virtual {v0, v5}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    iget-wide v7, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    cmpl-double v7, v5, v7

    if-nez v7, :cond_41

    if-nez v4, :cond_41

    return-void

    :cond_41
    iput-wide v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-static {v5, v6}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_48
    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    if-nez v5, :cond_52

    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-eqz v5, :cond_51

    goto :goto_52

    :cond_51
    :goto_51
    goto :goto_6b

    :cond_52
    :goto_52
    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    if-eqz v5, :cond_57

    goto :goto_5d

    :cond_57
    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0, v5}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;

    move-result-object v5

    :goto_5d
    move-object v1, v5

    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_69

    if-nez v4, :cond_69

    return-void

    :cond_69
    iput-object v1, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    :goto_6b
    iget-object v5, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    if-eqz v5, :cond_73

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_73
    iput-object v3, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    iput v6, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_7f

    :cond_7e
    move v5, v6

    :goto_7f
    const/4 v7, 0x0

    :goto_80
    if-ge v7, v5, :cond_13d

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {v0, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->charToStr(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_af

    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to get bitmap for number "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    iget v9, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget-object v11, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-nez v11, :cond_c0

    move v11, v6

    goto :goto_c4

    :cond_c0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    :goto_c4
    iget-object v12, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-nez v12, :cond_ca

    move v12, v6

    goto :goto_ce

    :cond_ca
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    :goto_ce
    const/4 v13, 0x0

    if-gt v9, v11, :cond_d6

    if-le v10, v12, :cond_d4

    goto :goto_d6

    :cond_d4
    move-object v6, v2

    goto :goto_11d

    :cond_d6
    :goto_d6
    iget-object v14, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-le v9, v11, :cond_ef

    sub-int v15, v5, v7

    iget v6, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    mul-int v16, v16, v15

    add-int v6, v6, v16

    iget v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    add-int/lit8 v17, v15, -0x1

    mul-int v2, v2, v17

    add-int/2addr v6, v2

    move v9, v6

    goto :goto_f1

    :cond_ef
    move v2, v11

    move v9, v2

    :goto_f1
    if-gt v10, v12, :cond_f4

    move v10, v12

    :cond_f4
    iput v10, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v6, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v14, :cond_11c

    const/4 v6, 0x0

    invoke-virtual {v2, v14, v13, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11d

    :cond_11c
    const/4 v6, 0x0

    :goto_11d
    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v14, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v14, v14

    invoke-virtual {v2, v8, v14, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    add-int/2addr v2, v13

    iput v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    add-int/lit8 v13, v5, -0x1

    if-ge v7, v13, :cond_137

    iget v13, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    add-int/2addr v2, v13

    iput v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    :cond_137
    add-int/lit8 v7, v7, 0x1

    move-object v2, v6

    const/4 v6, 0x0

    goto/16 :goto_80

    :cond_13d
    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->finish()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    return-void
.end method

.method protected getBitmapHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_12

    :cond_9
    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    :goto_12
    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public setValue(D)V
    .registers 4

    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageNumberScreenElement;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->requestUpdate()V

    return-void
.end method

.method protected updateBitmapImpl(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method
