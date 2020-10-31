.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mElegantTextHeight:Z

.field private final mFamilyName:Ljava/lang/String;

.field private final mFontFeatureSettings:Ljava/lang/String;

.field private final mFontVariationSettings:Ljava/lang/String;

.field private final mHasElegantTextHeight:Z

.field private final mHasLetterSpacing:Z

.field private final mLetterSpacing:F

.field private final mShadowColor:I

.field private final mShadowDx:F

.field private final mShadowDy:F

.field private final mShadowRadius:F

.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextFontWeight:I

.field private final mTextLocales:Landroid/os/LocaleList;

.field private final mTextSize:I

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 14

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v6

    const/16 v7, 0xc

    const/4 v8, 0x0

    if-nez v6, :cond_3a

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_3c

    :cond_3a
    iput-object v8, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    :goto_3c
    iget-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_43

    iput-object v8, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_6c

    :cond_43
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4c

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_6c

    :cond_4c
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-eq v9, v7, :cond_66

    if-eq v9, v5, :cond_60

    if-eq v9, v1, :cond_5a

    iput-object v8, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_6c

    :cond_5a
    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_6c

    :cond_60
    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_6c

    :cond_66
    const-string/jumbo v1, "sans"

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    nop

    :goto_6c
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_89

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_8b

    :cond_89
    iput-object v8, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    :goto_8b
    goto :goto_8e

    :cond_8c
    iput-object v8, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    :goto_8e
    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p3, :cond_ef

    const v3, 0x1030005

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_ef
    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_29

    :cond_27
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_3c

    :cond_3a
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    :goto_3c
    invoke-static {p1}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const-class v0, Landroid/os/LocaleList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 9

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    const/4 v1, -0x1

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShadowColor()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextFontWeight()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    return v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextSize()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isElegantTextHeight()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_11
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1d

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    :cond_1d
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    if-eqz v0, :cond_2a

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_2a
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_c

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_3c

    :cond_c
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v1, :cond_17

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_3c

    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :cond_21
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_2e

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    goto :goto_3b

    :cond_2e
    if-nez v1, :cond_36

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    goto :goto_3b

    :cond_36
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    :goto_3b
    nop

    :goto_3c
    if-eqz v1, :cond_73

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/4 v3, 0x1

    if-ltz v2, :cond_59

    const/16 v4, 0x3e8

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_4f

    move v4, v3

    goto :goto_50

    :cond_4f
    const/4 v4, 0x0

    :goto_50
    invoke-static {v1, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_5a

    :cond_59
    move-object v2, v1

    :goto_5a
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v0

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_67

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_67
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_70

    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_70
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_73
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v2, :cond_7b

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_7b
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v2, :cond_82

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_82
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    if-eqz v2, :cond_8b

    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    :cond_8b
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    if-eqz v2, :cond_94

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_94
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v2, :cond_9b

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_9b
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v2, :cond_a2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_a2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
