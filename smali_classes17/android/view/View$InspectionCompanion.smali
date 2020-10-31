.class public final Landroid/view/View$InspectionCompanion;
.super Ljava/lang/Object;
.source "View$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessibilityFocusedId:I

.field private mAccessibilityHeadingId:I

.field private mAccessibilityLiveRegionId:I

.field private mAccessibilityPaneTitleId:I

.field private mAccessibilityTraversalAfterId:I

.field private mAccessibilityTraversalBeforeId:I

.field private mActivatedId:I

.field private mAlphaId:I

.field private mAutofillHintsId:I

.field private mBackgroundId:I

.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mBaselineId:I

.field private mClickableId:I

.field private mContentDescriptionId:I

.field private mContextClickableId:I

.field private mDefaultFocusHighlightEnabledId:I

.field private mDrawingCacheQualityId:I

.field private mDuplicateParentStateId:I

.field private mElevationId:I

.field private mEnabledId:I

.field private mFadingEdgeLengthId:I

.field private mFilterTouchesWhenObscuredId:I

.field private mFitsSystemWindowsId:I

.field private mFocusableId:I

.field private mFocusableInTouchModeId:I

.field private mFocusedByDefaultId:I

.field private mFocusedId:I

.field private mForceDarkAllowedId:I

.field private mForegroundGravityId:I

.field private mForegroundId:I

.field private mForegroundTintId:I

.field private mForegroundTintModeId:I

.field private mHapticFeedbackEnabledId:I

.field private mIdId:I

.field private mImportantForAccessibilityId:I

.field private mImportantForAutofillId:I

.field private mImportantForContentCaptureId:I

.field private mIsScrollContainerId:I

.field private mKeepScreenOnId:I

.field private mKeyboardNavigationClusterId:I

.field private mLabelForId:I

.field private mLayerTypeId:I

.field private mLayoutDirectionId:I

.field private mLongClickableId:I

.field private mMinHeightId:I

.field private mMinWidthId:I

.field private mNestedScrollingEnabledId:I

.field private mNextClusterForwardId:I

.field private mNextFocusDownId:I

.field private mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mOutlineAmbientShadowColorId:I

.field private mOutlineProviderId:I

.field private mOutlineSpotShadowColorId:I

.field private mOverScrollModeId:I

.field private mPaddingBottomId:I

.field private mPaddingLeftId:I

.field private mPaddingRightId:I

.field private mPaddingTopId:I

.field private mPointerIconId:I

.field private mPressedId:I

.field private mPropertiesMapped:Z

.field private mRawLayoutDirectionId:I

.field private mRawTextAlignmentId:I

.field private mRawTextDirectionId:I

.field private mRequiresFadingEdgeId:I

.field private mRotationId:I

.field private mRotationXId:I

.field private mRotationYId:I

.field private mSaveEnabledId:I

.field private mScaleXId:I

.field private mScaleYId:I

.field private mScreenReaderFocusableId:I

.field private mScrollIndicatorsId:I

.field private mScrollXId:I

.field private mScrollYId:I

.field private mScrollbarDefaultDelayBeforeFadeId:I

.field private mScrollbarFadeDurationId:I

.field private mScrollbarSizeId:I

.field private mScrollbarStyleId:I

.field private mSelectedId:I

.field private mSolidColorId:I

.field private mSoundEffectsEnabledId:I

.field private mStateListAnimatorId:I

.field private mTagId:I

.field private mTextAlignmentId:I

.field private mTextDirectionId:I

.field private mTooltipTextId:I

.field private mTransformPivotXId:I

.field private mTransformPivotYId:I

.field private mTransitionNameId:I

.field private mTranslationXId:I

.field private mTranslationYId:I

.field private mTranslationZId:I

.field private mVisibilityId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "accessibilityFocused"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    const-string v2, "accessibilityHeading"

    const v4, 0x1010580

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v4, "none"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x1

    const-string/jumbo v6, "polite"

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x2

    const-string v7, "assertive"

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v7, v2}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v8, "accessibilityLiveRegion"

    const v9, 0x10103ee

    invoke-interface {v1, v8, v9, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    const-string v7, "accessibilityPaneTitle"

    const v8, 0x101057c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    const-string v7, "accessibilityTraversalAfter"

    const v8, 0x10104d2

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    const-string v7, "accessibilityTraversalBefore"

    const v8, 0x10104d1

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    const-string v7, "activated"

    invoke-interface {v1, v7, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    const-string v7, "alpha"

    const v8, 0x101031f

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    const-string v7, "autofillHints"

    const v8, 0x1010556

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    const-string v7, "background"

    const v8, 0x10100d4

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    const-string v7, "backgroundTint"

    const v8, 0x101046b

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    const-string v7, "backgroundTintMode"

    const v8, 0x101046c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    const-string v7, "baseline"

    const v8, 0x101031c

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    const-string v7, "clickable"

    const v8, 0x10100e5

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    const-string v7, "contentDescription"

    const v8, 0x1010273

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    const-string v7, "contextClickable"

    const v8, 0x10104e7

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    const-string v7, "defaultFocusHighlightEnabled"

    const v8, 0x1010562

    invoke-interface {v1, v7, v8}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const-string v8, "auto"

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v9, 0x80000

    const-string v10, "low"

    invoke-virtual {v7, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v9, 0x100000

    const-string v10, "high"

    invoke-virtual {v7, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v9, v7}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v10, "drawingCacheQuality"

    const v11, 0x10100e8

    invoke-interface {v1, v10, v11, v9}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    const-string v9, "duplicateParentState"

    const v10, 0x10100e9

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    const-string v9, "elevation"

    const v10, 0x1010440

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    const-string v9, "enabled"

    const v10, 0x101000e

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    const-string v9, "fadingEdgeLength"

    const v10, 0x10100e0

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    const-string v9, "filterTouchesWhenObscured"

    const v10, 0x10102c4

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    const-string v9, "fitsSystemWindows"

    const v10, 0x10100dd

    invoke-interface {v1, v9, v10}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const-string v10, "false"

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x10

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v11, v9}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v12, "focusable"

    const v13, 0x10100da

    invoke-interface {v1, v12, v13, v11}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    const-string v11, "focusableInTouchMode"

    const v12, 0x10100db

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    const-string v11, "focused"

    invoke-interface {v1, v11, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    const-string v11, "focusedByDefault"

    const v12, 0x1010544

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    const-string v11, "forceDarkAllowed"

    const v12, 0x101058c

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    const-string v11, "foreground"

    const v12, 0x1010109

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    const-string v11, "foregroundGravity"

    const v12, 0x1010200

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    const-string v11, "foregroundTint"

    const v12, 0x101046d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    const-string v11, "foregroundTintMode"

    const v12, 0x101046e

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    const-string v11, "hapticFeedbackEnabled"

    const v12, 0x101025e

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    const-string v11, "id"

    const v12, 0x10100d0

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/view/View$InspectionCompanion;->mIdId:I

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v11, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v13, "no"

    invoke-virtual {v11, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v14, 0x4

    const-string/jumbo v15, "noHideDescendants"

    invoke-virtual {v11, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v15, v11}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v10, "importantForAccessibility"

    const v14, 0x10103aa

    invoke-interface {v1, v10, v14, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v10

    iput v10, v0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v10, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v10, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v10, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v14, "yesExcludeDescendants"

    const/4 v15, 0x4

    invoke-virtual {v10, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v15, 0x8

    const-string/jumbo v6, "noExcludeDescendants"

    invoke-virtual {v10, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v15, v10}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v5, "importantForAutofill"

    const v3, 0x1010558

    invoke-interface {v1, v5, v3, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v5, v3}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v6, "importantForContentCapture"

    const v8, 0x1010607

    invoke-interface {v1, v6, v8, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    const-string v5, "isScrollContainer"

    const v6, 0x101024e

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    const-string v5, "keepScreenOn"

    const v6, 0x1010216

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    const-string v5, "keyboardNavigationCluster"

    const v6, 0x1010540

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    const-string v5, "labelFor"

    const v6, 0x10103c6

    invoke-interface {v1, v5, v6}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v6, "software"

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v6, "hardware"

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v6, v5}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v8, "layerType"

    const v12, 0x1010354

    invoke-interface {v1, v8, v12, v6}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v6

    iput v6, v0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const-string v8, "ltr"

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v12, "rtl"

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v13, v6}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v14, "layoutDirection"

    const v15, 0x10103b2

    invoke-interface {v1, v14, v15, v13}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    const-string v13, "longClickable"

    const v14, 0x10100e6

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    const-string/jumbo v13, "minHeight"

    const v14, 0x1010140

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    const-string/jumbo v13, "minWidth"

    const v14, 0x101013f

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    const-string/jumbo v13, "nestedScrollingEnabled"

    const v14, 0x1010436

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    const-string/jumbo v13, "nextClusterForward"

    const v14, 0x1010542

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    const-string/jumbo v13, "nextFocusDown"

    const v14, 0x10100e4

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    const-string/jumbo v13, "nextFocusForward"

    const v14, 0x101033c

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    const-string/jumbo v13, "nextFocusLeft"

    const v14, 0x10100e1

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    const-string/jumbo v13, "nextFocusRight"

    const v14, 0x10100e2

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    const-string/jumbo v13, "nextFocusUp"

    const v14, 0x10100e3

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    const-string/jumbo v13, "outlineAmbientShadowColor"

    const v14, 0x1010582

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    const-string/jumbo v13, "outlineProvider"

    const v14, 0x10104b8

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    const-string/jumbo v13, "outlineSpotShadowColor"

    const v14, 0x1010581

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    const-string v14, "always"

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v14, "ifContentScrolls"

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v14, "never"

    const/4 v15, 0x2

    invoke-virtual {v13, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v14, v13}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v15, "overScrollMode"

    move-object/from16 v16, v2

    const v2, 0x10102c1

    invoke-interface {v1, v15, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    const-string/jumbo v2, "paddingBottom"

    const v14, 0x10100d9

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    const-string/jumbo v2, "paddingLeft"

    const v14, 0x10100d6

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    const-string/jumbo v2, "paddingRight"

    const v14, 0x10100d8

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    const-string/jumbo v2, "paddingTop"

    const v14, 0x10100d7

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    const-string/jumbo v2, "pointerIcon"

    const v14, 0x1010509

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    const-string/jumbo v2, "pressed"

    const/4 v14, 0x0

    invoke-interface {v1, v2, v14}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v14, "inherit"

    const/4 v15, 0x2

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v15, 0x3

    move-object/from16 v17, v3

    const-string v3, "locale"

    invoke-virtual {v2, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v15, v2}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v18, v2

    const-string/jumbo v2, "rawLayoutDirection"

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v15}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v5, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "gravity"

    const/4 v15, 0x1

    invoke-virtual {v2, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v15, "textStart"

    move-object/from16 v20, v6

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v6, "textEnd"

    move-object/from16 v21, v7

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v7, "center"

    move-object/from16 v22, v9

    const/4 v9, 0x4

    invoke-virtual {v2, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x5

    const-string/jumbo v9, "viewStart"

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, 0x6

    const-string/jumbo v7, "viewEnd"

    invoke-virtual {v2, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v7, v2}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "rawTextAlignment"

    move-object/from16 v23, v2

    const/4 v2, 0x0

    invoke-interface {v1, v9, v2, v7}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v7, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "firstStrong"

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "anyRtl"

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x4

    invoke-virtual {v7, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "firstStrongLtr"

    const/4 v9, 0x6

    invoke-virtual {v7, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x7

    const-string v9, "firstStrongRtl"

    invoke-virtual {v7, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v2, v7}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "rawTextDirection"

    const/4 v14, 0x0

    invoke-interface {v1, v9, v14, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/16 v9, 0x1000

    const/16 v14, 0x1000

    move-object/from16 v24, v7

    const-string v7, "horizontal"

    invoke-virtual {v2, v9, v14, v7}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v7, 0x3000

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v7, 0x2000

    const/16 v9, 0x2000

    const-string/jumbo v14, "vertical"

    invoke-virtual {v2, v7, v9, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;

    invoke-direct {v7, v2}, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v9, "requiresFadingEdge"

    const v14, 0x10103a5

    invoke-interface {v1, v9, v14, v7}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    const-string/jumbo v7, "rotation"

    const v9, 0x1010326

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    const-string/jumbo v7, "rotationX"

    const v9, 0x1010327

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    const-string/jumbo v7, "rotationY"

    const v9, 0x1010328

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    const-string/jumbo v7, "saveEnabled"

    const v9, 0x10100e7

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    const-string/jumbo v7, "scaleX"

    const v9, 0x1010324

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    const-string/jumbo v7, "scaleY"

    const v9, 0x1010325

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    const-string/jumbo v7, "screenReaderFocusable"

    const v9, 0x1010574

    invoke-interface {v1, v7, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    new-instance v7, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v7}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const-string v9, "bottom"

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v14, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v9, 0x20

    const/16 v14, 0x20

    move-object/from16 v25, v2

    const-string v2, "end"

    invoke-virtual {v7, v9, v14, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v2, "left"

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v9, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v2, -0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v2, "right"

    const/16 v4, 0x8

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v2, "start"

    const/16 v4, 0x10

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v2, "top"

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v4, v2}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;

    invoke-direct {v2, v7}, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string/jumbo v4, "scrollIndicators"

    const v9, 0x10104e6

    invoke-interface {v1, v4, v9, v2}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    const-string/jumbo v2, "scrollX"

    const v4, 0x10100d2

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    const-string/jumbo v2, "scrollY"

    const v4, 0x10100d3

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    const-string/jumbo v2, "scrollbarDefaultDelayBeforeFade"

    const v4, 0x10102a9

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    const-string/jumbo v2, "scrollbarFadeDuration"

    const v4, 0x10102a8

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    const-string/jumbo v2, "scrollbarSize"

    const v4, 0x1010063

    invoke-interface {v1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-string v4, "insideOverlay"

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v4, 0x1000000

    const-string v9, "insideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v4, 0x2000000

    const-string/jumbo v9, "outsideOverlay"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v4, 0x3000000

    const-string/jumbo v9, "outsideInset"

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v4, v2}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v9, "scrollbarStyle"

    const v14, 0x101007f

    invoke-interface {v1, v9, v14, v4}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    const-string/jumbo v4, "selected"

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    const-string/jumbo v4, "solidColor"

    const v9, 0x101034a

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    const-string/jumbo v4, "soundEffectsEnabled"

    const v9, 0x1010215

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    const-string/jumbo v4, "stateListAnimator"

    const v9, 0x1010448

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    const-string/jumbo v4, "tag"

    const v9, 0x10100d1

    invoke-interface {v1, v4, v9}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/view/View$InspectionCompanion;->mTagId:I

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "center"

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v5, "viewStart"

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v5, "viewEnd"

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v5, v4}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v6, "textAlignment"

    const v9, 0x10103b1

    invoke-interface {v1, v6, v9, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    const-string v6, "firstStrong"

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v6, "anyRtl"

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v3, "firstStrongLtr"

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x7

    const-string v6, "firstStrongRtl"

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v3, v5}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v6, "textDirection"

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    const-string/jumbo v3, "tooltipText"

    const v6, 0x1010534

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    const-string/jumbo v3, "transformPivotX"

    const v6, 0x1010320

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    const-string/jumbo v3, "transformPivotY"

    const v6, 0x1010321

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    const-string/jumbo v3, "transitionName"

    const v6, 0x1010400

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    const-string/jumbo v3, "translationX"

    const v6, 0x1010322

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    const-string/jumbo v3, "translationY"

    const v6, 0x1010323

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    const-string/jumbo v3, "translationZ"

    const v6, 0x10103fa

    invoke-interface {v1, v3, v6}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v6, "visible"

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v6, "invisible"

    const/4 v8, 0x4

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v6, "gone"

    const/16 v8, 0x8

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v6, v3}, Landroid/view/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v8, "visibility"

    const v9, 0x10100dc

    invoke-interface {v1, v8, v9, v6}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v6

    iput v6, v0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/View$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_36e

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityHeadingId:I

    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityLiveRegionId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityPaneTitleId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalAfterId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalAfter()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAccessibilityTraversalBeforeId:I

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityTraversalBefore()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mActivatedId:I

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAlphaId:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mAutofillHintsId:I

    invoke-virtual {p1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mBaselineId:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContentDescriptionId:I

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mContextClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isContextClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDefaultFocusHighlightEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->getDefaultFocusHighlightEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDrawingCacheQualityId:I

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheQuality()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mDuplicateParentStateId:I

    invoke-virtual {p1}, Landroid/view/View;->isDuplicateParentStateEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mElevationId:I

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFadingEdgeLengthId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdgeLength()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFilterTouchesWhenObscuredId:I

    invoke-virtual {p1}, Landroid/view/View;->getFilterTouchesWhenObscured()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFitsSystemWindowsId:I

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->getFocusable()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusableInTouchModeId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mFocusedByDefaultId:I

    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForceDarkAllowedId:I

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundId:I

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundGravityId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mForegroundTintModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mHapticFeedbackEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIdId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAccessibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForAutofillId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAutofill()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mImportantForContentCaptureId:I

    invoke-virtual {p1}, Landroid/view/View;->getImportantForContentCapture()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mIsScrollContainerId:I

    invoke-virtual {p1}, Landroid/view/View;->isScrollContainer()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeepScreenOnId:I

    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mKeyboardNavigationClusterId:I

    invoke-virtual {p1}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLabelForId:I

    invoke-virtual {p1}, Landroid/view/View;->getLabelFor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayerTypeId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mLongClickableId:I

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinHeightId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNestedScrollingEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextClusterForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusDownId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusDownId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusForwardId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusRightId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mNextFocusUpId:I

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineAmbientShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineAmbientShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineProviderId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOutlineSpotShadowColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getOutlineSpotShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mOverScrollModeId:I

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingBottomId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingLeftId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingRightId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPaddingTopId:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPointerIconId:I

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mPressedId:I

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawLayoutDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRawTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRequiresFadingEdgeId:I

    invoke-virtual {p1}, Landroid/view/View;->getFadingEdge()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mRotationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSaveEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSaveEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScaleYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScreenReaderFocusableId:I

    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollIndicatorsId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollIndicators()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollXId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollYId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarDefaultDelayBeforeFadeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarFadeDurationId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarSizeId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mScrollbarStyleId:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollBarStyle()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSelectedId:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSolidColorId:I

    invoke-virtual {p1}, Landroid/view/View;->getSolidColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mSoundEffectsEnabledId:I

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mStateListAnimatorId:I

    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTagId:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextAlignmentId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTextDirectionId:I

    invoke-virtual {p1}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTooltipTextId:I

    invoke-virtual {p1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotXId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransformPivotYId:I

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTransitionNameId:I

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationXId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationYId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mTranslationZId:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/view/View$InspectionCompanion;->mVisibilityId:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    return-void

    :cond_36e
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$InspectionCompanion;->readProperties(Landroid/view/View;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
