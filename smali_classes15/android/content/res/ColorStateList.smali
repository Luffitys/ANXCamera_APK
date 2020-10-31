.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    if-eqz p1, :cond_29

    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    :cond_29
    return-void
.end method

.method public constructor <init>([[I[I)V
    .registers 3

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ColorStateList;)I
    .registers 2

    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return v0
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 12

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_5f

    aget-object v4, v1, v3

    if-eqz v4, :cond_5c

    aget-object v4, v1, v3

    sget-object v5, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    aget-object v5, v1, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eqz v5, :cond_2c

    iget-object v5, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v5, v5, v3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v5, v7

    goto :goto_2e

    :cond_2c
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2e
    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v1, v3

    aget-object v7, v1, v3

    if-eqz v7, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v6, v7}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    aput v9, v8, v3

    iget v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_5f
    if-nez v0, :cond_64

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    :cond_64
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    goto :goto_4

    :cond_10
    if-ne v2, v3, :cond_17

    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1}, Landroid/content/res/ColorStateList;-><init>()V

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v1

    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    const/high16 v5, -0x10000

    const/4 v6, 0x0

    const-class v7, [I

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    array-length v8, v7

    new-array v8, v8, [[I

    array-length v9, v7

    new-array v9, v9, [I

    const/4 v10, 0x0

    :goto_1f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    if-eq v11, v3, :cond_f1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move v14, v11

    if-ge v11, v2, :cond_37

    const/4 v11, 0x3

    if-eq v12, v11, :cond_31

    goto :goto_37

    :cond_31
    move/from16 v17, v2

    move/from16 v18, v12

    goto/16 :goto_f5

    :cond_37
    :goto_37
    const/4 v11, 0x2

    if-ne v12, v11, :cond_e6

    if-gt v14, v2, :cond_e6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "item"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4c

    move/from16 v17, v2

    goto/16 :goto_ec

    :cond_4c
    sget-object v11, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v15, p1

    move-object/from16 v3, p4

    invoke-static {v15, v3, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    move/from16 v17, v2

    const v2, -0xff01

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v16

    or-int v4, v4, v16

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v16, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    move/from16 v19, v4

    new-array v4, v12, [I

    const/16 v20, 0x0

    move-object/from16 v21, v11

    move/from16 v11, v16

    move/from16 v16, v14

    move/from16 v14, v20

    :goto_8a
    if-ge v14, v12, :cond_b7

    move/from16 v20, v12

    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v12

    const v15, 0x10101a5

    if-eq v12, v15, :cond_af

    const v15, 0x101031f

    if-eq v12, v15, :cond_af

    add-int/lit8 v15, v11, 0x1

    move/from16 v22, v15

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_a9

    move v15, v12

    goto :goto_aa

    :cond_a9
    neg-int v15, v12

    :goto_aa
    aput v15, v4, v11

    move/from16 v11, v22

    goto :goto_b0

    :cond_af
    nop

    :goto_b0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v15, p1

    move/from16 v12, v20

    goto :goto_8a

    :cond_b7
    move/from16 v20, v12

    invoke-static {v4, v11}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v4

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v12

    if-eqz v10, :cond_c6

    array-length v14, v4

    if-nez v14, :cond_c7

    :cond_c6
    move v5, v12

    :cond_c7
    if-eqz v13, :cond_ca

    const/4 v6, 0x1

    :cond_ca
    invoke-static {v9, v10, v12}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    invoke-static {v8, v10, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    check-cast v8, [[I

    invoke-static {v7, v10, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    check-cast v7, [[I

    nop

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v17

    move/from16 v4, v19

    const/4 v3, 0x1

    goto/16 :goto_1f

    :cond_e6
    move/from16 v17, v2

    move/from16 v18, v12

    move/from16 v16, v14

    :goto_ec
    move/from16 v2, v17

    const/4 v3, 0x1

    goto/16 :goto_1f

    :cond_f1
    move/from16 v17, v2

    move/from16 v18, v12

    :goto_f5
    iput v4, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v5, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    if-eqz v6, :cond_104

    new-array v2, v10, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    const/4 v3, 0x0

    invoke-static {v8, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_107

    :cond_104
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    :goto_107
    new-array v2, v10, [I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    new-array v3, v10, [[I

    iput-object v3, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const/4 v3, 0x0

    invoke-static {v9, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v7, v3, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method private modulateColorAlpha(IF)I
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v1, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private onColorsChanged()V
    .registers 9

    const/high16 v0, -0x10000

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v4, v2

    if-lez v4, :cond_2e

    const/4 v5, 0x0

    aget v0, v3, v5

    add-int/lit8 v5, v4, -0x1

    :goto_f
    if-lez v5, :cond_1c

    aget-object v6, v2, v5

    array-length v6, v6

    if-nez v6, :cond_19

    aget v0, v3, v5

    goto :goto_1c

    :cond_19
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_2e

    aget v6, v3, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2b

    const/4 v1, 0x0

    goto :goto_2e

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2e
    :goto_2e
    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput-boolean v1, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return-void
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .registers 8

    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_22

    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1d

    monitor-exit v0

    return-object v2

    :cond_1d
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_22
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_2a
    if-ltz v3, :cond_42

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3f

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3f
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_42
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v3

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorForState([II)I
    .registers 7

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    return v3

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return p2
.end method

.method public getColors()[I
    .registers 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_b

    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    :cond_b
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .registers 2

    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .registers 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 3

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public hasState(I)Z
    .registers 10

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    array-length v4, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_1b

    aget v6, v3, v5

    if-eq v6, p1, :cond_19

    aget v6, v3, v5

    not-int v7, p1

    if-ne v6, v7, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_19
    :goto_19
    const/4 v6, 0x1

    return v6

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .registers 5

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_d

    aget-object v0, v0, v2

    array-length v0, v0

    if-lez v0, :cond_d

    move v2, v3

    :cond_d
    return v2
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_12
    :goto_12
    return-object p0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .registers 7

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ColorStateList"

    const-string v1, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
