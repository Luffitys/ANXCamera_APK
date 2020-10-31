.class public final Landroid/widget/TextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "TextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoLinkId:I

.field private mAutoSizeMaxTextSizeId:I

.field private mAutoSizeMinTextSizeId:I

.field private mAutoSizeStepGranularityId:I

.field private mAutoSizeTextTypeId:I

.field private mBreakStrategyId:I

.field private mCursorVisibleId:I

.field private mDrawableBlendModeId:I

.field private mDrawablePaddingId:I

.field private mDrawableTintId:I

.field private mDrawableTintModeId:I

.field private mElegantTextHeightId:I

.field private mEllipsizeId:I

.field private mFallbackLineSpacingId:I

.field private mFirstBaselineToTopHeightId:I

.field private mFontFeatureSettingsId:I

.field private mFreezesTextId:I

.field private mGravityId:I

.field private mHintId:I

.field private mHyphenationFrequencyId:I

.field private mImeActionIdId:I

.field private mImeActionLabelId:I

.field private mImeOptionsId:I

.field private mIncludeFontPaddingId:I

.field private mInputTypeId:I

.field private mJustificationModeId:I

.field private mLastBaselineToBottomHeightId:I

.field private mLetterSpacingId:I

.field private mLineHeightId:I

.field private mLineSpacingExtraId:I

.field private mLineSpacingMultiplierId:I

.field private mLinksClickableId:I

.field private mMarqueeRepeatLimitId:I

.field private mMaxEmsId:I

.field private mMaxHeightId:I

.field private mMaxLinesId:I

.field private mMaxWidthId:I

.field private mMinEmsId:I

.field private mMinLinesId:I

.field private mMinWidthId:I

.field private mPrivateImeOptionsId:I

.field private mPropertiesMapped:Z

.field private mScrollHorizontallyId:I

.field private mShadowColorId:I

.field private mShadowDxId:I

.field private mShadowDyId:I

.field private mShadowRadiusId:I

.field private mSingleLineId:I

.field private mTextAllCapsId:I

.field private mTextColorHighlightId:I

.field private mTextColorHintId:I

.field private mTextColorId:I

.field private mTextColorLinkId:I

.field private mTextId:I

.field private mTextIsSelectableId:I

.field private mTextScaleXId:I

.field private mTextSizeId:I

.field private mTypefaceId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/4 v3, 0x2

    const-string v4, "email"

    invoke-virtual {v2, v3, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x8

    const-string/jumbo v5, "map"

    invoke-virtual {v2, v4, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v4, 0x4

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v4, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v6, 0x1

    const-string/jumbo v7, "web"

    invoke-virtual {v2, v6, v6, v7}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;

    invoke-direct {v7, v2}, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v8, "autoLink"

    const v9, 0x10100b0

    invoke-interface {v1, v8, v9, v7}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    const-string v7, "autoSizeMaxTextSize"

    const v8, 0x1010546

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    const-string v7, "autoSizeMinTextSize"

    const v8, 0x1010538

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    const-string v7, "autoSizeStepGranularity"

    const v8, 0x1010536

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    const-string/jumbo v9, "none"

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v10, "uniform"

    invoke-virtual {v7, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v10, v7}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v11, "autoSizeTextType"

    const v12, 0x1010535

    invoke-interface {v1, v11, v12, v10}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v10

    iput v10, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v11, "simple"

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v11, "high_quality"

    invoke-virtual {v10, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v11, "balanced"

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v11, v10}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v12, "breakStrategy"

    const v13, 0x10104dd

    invoke-interface {v1, v12, v13, v11}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    const-string v11, "cursorVisible"

    const v12, 0x1010152

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    const-string v11, "drawableBlendMode"

    const/16 v12, 0x50

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    const-string v11, "drawablePadding"

    const v12, 0x1010171

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    const-string v11, "drawableTint"

    const v12, 0x10104d6

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    const-string v11, "drawableTintMode"

    const v12, 0x10104d7

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    const-string v11, "elegantTextHeight"

    const v12, 0x101045d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    const-string v11, "ellipsize"

    const v12, 0x10100ab

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    const-string v11, "fallbackLineSpacing"

    const v12, 0x101057b

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    const-string v11, "firstBaselineToTopHeight"

    const v12, 0x101057d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    const-string v11, "fontFeatureSettings"

    const v12, 0x10104b7

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    const-string v11, "freezesText"

    const v12, 0x101016c

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    const-string v11, "gravity"

    const v12, 0x10100af

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    const-string v11, "hint"

    const v12, 0x1010150

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v12, "normal"

    invoke-virtual {v11, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v13, "full"

    invoke-virtual {v11, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v13, v11}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v14, "hyphenationFrequency"

    const v15, 0x10104de

    invoke-interface {v1, v14, v15, v13}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    const-string v13, "imeActionId"

    const v14, 0x1010266

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    const-string v13, "imeActionLabel"

    const v14, 0x1010265

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    new-instance v13, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v13}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/16 v14, 0xff

    const/4 v15, 0x6

    const-string v8, "actionDone"

    invoke-virtual {v13, v14, v15, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v8, "actionGo"

    invoke-virtual {v13, v14, v3, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v8, 0x5

    const-string v15, "actionNext"

    invoke-virtual {v13, v14, v8, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v8, "actionNone"

    invoke-virtual {v13, v14, v6, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v8, 0x7

    const-string v15, "actionPrevious"

    invoke-virtual {v13, v14, v8, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v8, 0x3

    const-string v15, "actionSearch"

    invoke-virtual {v13, v14, v8, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v15, "actionSend"

    invoke-virtual {v13, v14, v4, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v15, "actionUnspecified"

    const/4 v6, 0x0

    invoke-virtual {v13, v14, v6, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, -0x80000000

    const-string v14, "flagForceAscii"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x8000000

    const-string v14, "flagNavigateNext"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x4000000

    const-string v14, "flagNavigatePrevious"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x20000000

    const-string v14, "flagNoAccessoryAction"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    const-string v14, "flagNoEnterAction"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x10000000

    const-string v14, "flagNoExtractUi"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x2000000

    const-string v14, "flagNoFullscreen"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v6, 0x1000000

    const-string v14, "flagNoPersonalizedLearning"

    invoke-virtual {v13, v6, v6, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v6, -0x1

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14, v12}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;

    invoke-direct {v12, v13}, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v14, "imeOptions"

    const v15, 0x1010264

    invoke-interface {v1, v14, v15, v12}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v12

    iput v12, v0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    const-string v12, "includeFontPadding"

    const v14, 0x101015f

    invoke-interface {v1, v12, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    new-instance v12, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v12}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/16 v14, 0xfff

    const/16 v15, 0x14

    const-string v8, "date"

    invoke-virtual {v12, v14, v15, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v8, "datetime"

    invoke-virtual {v12, v14, v4, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v12, v6, v4, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v4, "number"

    invoke-virtual {v12, v14, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v3, 0xfff00f

    const/16 v4, 0x2002

    const-string/jumbo v6, "numberDecimal"

    invoke-virtual {v12, v3, v4, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x12

    const-string/jumbo v6, "numberPassword"

    invoke-virtual {v12, v14, v4, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x1002

    const-string/jumbo v6, "numberSigned"

    invoke-virtual {v12, v3, v4, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v12, v14, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v4, "text"

    const/4 v5, 0x1

    invoke-virtual {v12, v14, v5, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v5, 0x10001

    const-string/jumbo v6, "textAutoComplete"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v5, 0x8001

    const-string/jumbo v6, "textAutoCorrect"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x1001

    const-string/jumbo v6, "textCapCharacters"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x4001

    const-string/jumbo v6, "textCapSentences"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x2001

    const-string/jumbo v6, "textCapWords"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x21

    const-string/jumbo v6, "textEmailAddress"

    invoke-virtual {v12, v14, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x31

    const-string/jumbo v6, "textEmailSubject"

    invoke-virtual {v12, v14, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0xb1

    const-string/jumbo v6, "textFilter"

    invoke-virtual {v12, v14, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v5, 0x40001

    const-string/jumbo v6, "textImeMultiLine"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v5, 0x51

    const-string/jumbo v6, "textLongMessage"

    invoke-virtual {v12, v14, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v5, 0x20001

    const-string/jumbo v6, "textMultiLine"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v5, 0x80001

    const-string/jumbo v6, "textNoSuggestions"

    invoke-virtual {v12, v3, v5, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x81

    const-string/jumbo v5, "textPassword"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x61

    const-string/jumbo v5, "textPersonName"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0xc1

    const-string/jumbo v5, "textPhonetic"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x71

    const-string/jumbo v5, "textPostalAddress"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x41

    const-string/jumbo v5, "textShortMessage"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x11

    const-string/jumbo v5, "textUri"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x91

    const-string/jumbo v5, "textVisiblePassword"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0xa1

    const-string/jumbo v5, "textWebEditText"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0xd1

    const-string/jumbo v5, "textWebEmailAddress"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0xe1

    const-string/jumbo v5, "textWebPassword"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x24

    const-string/jumbo v5, "time"

    invoke-virtual {v12, v14, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;

    invoke-direct {v3, v12}, Landroid/widget/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v5, "inputType"

    const v6, 0x1010220

    invoke-interface {v1, v5, v6, v3}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "inter_word"

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v5, v3}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v6, "justificationMode"

    const v8, 0x1010567

    invoke-interface {v1, v6, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    const-string v5, "lastBaselineToBottomHeight"

    const v6, 0x101057e

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    const-string v5, "letterSpacing"

    const v6, 0x10104b6

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    const-string v5, "lineHeight"

    const v6, 0x101057f

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    const-string v5, "lineSpacingExtra"

    const v6, 0x1010217

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    const-string v5, "lineSpacingMultiplier"

    const v6, 0x1010218

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    const-string v5, "linksClickable"

    const v6, 0x10100b1

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    const-string/jumbo v5, "marqueeRepeatLimit"

    const v6, 0x101021d

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    const-string/jumbo v5, "maxEms"

    const v6, 0x1010157

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    const-string/jumbo v5, "maxHeight"

    const v6, 0x1010120

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    const-string/jumbo v5, "maxLines"

    const v6, 0x1010153

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    const-string/jumbo v5, "maxWidth"

    const v6, 0x101011f

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    const-string/jumbo v5, "minEms"

    const v6, 0x101015a

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    const-string/jumbo v5, "minLines"

    const v6, 0x1010156

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    const-string/jumbo v5, "minWidth"

    const v6, 0x101013f

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    const-string/jumbo v5, "privateImeOptions"

    const v6, 0x1010223

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    const-string/jumbo v5, "scrollHorizontally"

    const v6, 0x101015b

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    const-string/jumbo v5, "shadowColor"

    const v6, 0x1010161

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    const-string/jumbo v5, "shadowDx"

    const v6, 0x1010162

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    const-string/jumbo v5, "shadowDy"

    const v6, 0x1010163

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    const-string/jumbo v5, "shadowRadius"

    const v6, 0x1010164

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    const-string/jumbo v5, "singleLine"

    const v6, 0x101015d

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    const v5, 0x101014f

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    const-string/jumbo v4, "textAllCaps"

    const v5, 0x101038c

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    const-string/jumbo v4, "textColor"

    const v5, 0x1010098

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    const-string/jumbo v4, "textColorHighlight"

    const v5, 0x1010099

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    const-string/jumbo v4, "textColorHint"

    const v5, 0x101009a

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    const-string/jumbo v4, "textColorLink"

    const v5, 0x101009b

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    const-string/jumbo v4, "textIsSelectable"

    const v5, 0x1010316

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    const-string/jumbo v4, "textScaleX"

    const v5, 0x1010151

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    const-string/jumbo v4, "textSize"

    const v5, 0x1010095

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    const-string/jumbo v4, "typeface"

    const v5, 0x1010096

    invoke-interface {v1, v4, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_206

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoLinkMask()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isElegantTextHeight()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFirstBaselineToTopHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLastBaselineToBottomHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isAllCaps()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_206
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView$InspectionCompanion;->readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
