.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static sCompatibilityDone:Z

.field private static sRemeasureWeightedChildren:Z


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_25

    move v4, v0

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_44

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_44
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_4d

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4d
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_57

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_57
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-gt v1, v6, :cond_90

    goto :goto_91

    :cond_90
    move v0, v2

    :goto_91
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .registers 6

    add-int/lit8 v0, p1, -0x1

    :goto_2
    if-ltz v0, :cond_17

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    const/4 v2, 0x0

    return v2

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private forceUniformHeight(II)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3d

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3d

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private isShowingDividers()Z
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_39

    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    :goto_39
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5f

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_7b

    :cond_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_7b

    :cond_5f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_73

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_7b

    :cond_73
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    :goto_7b
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7e
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_5a

    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    :goto_5a
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5d
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const-string v1, "layout:baselineAligned"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const-string v1, "layout:baselineAlignedChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const-string/jumbo v1, "measurement:baselineChildTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const-string/jumbo v1, "measurement:orientation"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const-string/jumbo v1, "measurement:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    const-string/jumbo v1, "measurement:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    const-string v1, "layout:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const-string v1, "layout:useLargestChild"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_11

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    return v2

    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5f

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4e

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_5f

    :cond_41
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    goto :goto_5f

    :cond_4e
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    :cond_6a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_10

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move v1, v2

    :cond_f
    return v1

    :cond_10
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    :cond_1d
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method public isBaselineAligned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 38

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v9, p4, p2

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v9, v0

    sub-int v0, v9, v8

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    and-int/lit8 v14, v0, 0x70

    iget-boolean v15, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    iget-object v5, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v4, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v13, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_44

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    goto :goto_4f

    :cond_3a
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_4f

    :cond_44
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v1, p3, p1

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_4f
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_5b

    add-int/lit8 v1, v12, -0x1

    const/4 v2, -0x1

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_5f

    :cond_5b
    move/from16 v18, v1

    move/from16 v19, v2

    :goto_5f
    const/4 v1, 0x0

    move v2, v1

    :goto_61
    if-ge v2, v12, :cond_16b

    mul-int v1, v19, v2

    add-int v1, v18, v1

    move/from16 v20, v7

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_85

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    const/16 v21, 0x1

    goto/16 :goto_159

    :cond_85
    move/from16 v21, v2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_148

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    const/4 v2, -0x1

    nop

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v25, v2

    const/4 v2, -0x1

    if-eqz v15, :cond_b1

    move/from16 v26, v9

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v9, v2, :cond_b3

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    goto :goto_b5

    :cond_b1
    move/from16 v26, v9

    :cond_b3
    move/from16 v9, v25

    :goto_b5
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_bd

    move v2, v14

    move/from16 v27, v2

    goto :goto_bf

    :cond_bd
    move/from16 v27, v2

    :goto_bf
    and-int/lit8 v2, v27, 0x70

    move/from16 v28, v12

    const/16 v12, 0x10

    if-eq v2, v12, :cond_fb

    const/16 v12, 0x30

    if-eq v2, v12, :cond_e9

    const/16 v12, 0x50

    if-eq v2, v12, :cond_d2

    move v2, v8

    move v12, v2

    goto :goto_108

    :cond_d2
    sub-int v2, v10, v24

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    const/4 v12, -0x1

    if-eq v9, v12, :cond_e7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v9

    aget v25, v4, v16

    sub-int v25, v25, v12

    sub-int v2, v2, v25

    move v12, v2

    goto :goto_108

    :cond_e7
    move v12, v2

    goto :goto_108

    :cond_e9
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    const/4 v12, -0x1

    if-eq v9, v12, :cond_f8

    const/4 v12, 0x1

    aget v17, v5, v12

    sub-int v17, v17, v9

    add-int v2, v2, v17

    move v12, v2

    goto :goto_108

    :cond_f8
    const/4 v12, 0x1

    move v12, v2

    goto :goto_108

    :cond_fb
    const/4 v12, 0x1

    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    move v12, v2

    :goto_108
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_111

    iget v2, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v2

    :cond_111
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    move-object v1, v7

    move/from16 v17, v21

    const/16 v21, 0x1

    move/from16 v30, v9

    move-object v9, v3

    move v3, v12

    move-object/from16 v31, v4

    move/from16 v4, v23

    move-object/from16 v32, v5

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v17, v0

    move/from16 v0, v25

    goto :goto_159

    :cond_148
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    move/from16 v17, v21

    const/16 v21, 0x1

    move v8, v1

    move/from16 v2, v17

    :goto_159
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v20

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v12, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_61

    :cond_16b
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 30

    move-object/from16 v6, p0

    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v8, p3, p1

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v8, v0

    sub-int v0, v8, v7

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v10, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    const v1, 0x800007

    and-int v13, v0, v1

    const/16 v0, 0x10

    if-eq v12, v0, :cond_32

    const/16 v0, 0x50

    if-eq v12, v0, :cond_28

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_3d

    :cond_28
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_3d

    :cond_32
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_3d
    const/4 v1, 0x0

    move v14, v1

    :goto_3f
    if-ge v14, v11, :cond_e4

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    const/4 v5, 0x1

    if-nez v15, :cond_53

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v19, v5

    move/from16 v24, v7

    goto/16 :goto_de

    :cond_53
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_da

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    nop

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_72

    move v1, v13

    move v3, v1

    goto :goto_73

    :cond_72
    move v3, v1

    :goto_73
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    and-int/lit8 v1, v18, 0x7

    if-eq v1, v5, :cond_90

    const/4 v5, 0x5

    if-eq v1, v5, :cond_88

    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v20, v1

    goto :goto_9d

    :cond_88
    sub-int v1, v9, v16

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    move/from16 v20, v1

    goto :goto_9d

    :cond_90
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    move/from16 v20, v1

    :goto_9d
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a6

    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    :cond_a6
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v21, v0, v1

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v21, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v22, v2

    move/from16 v2, v20

    move/from16 v23, v3

    move v3, v5

    move-object v5, v4

    move/from16 v4, v16

    move/from16 v24, v7

    const/16 v19, 0x1

    move-object v7, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v21, v21, v0

    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v21

    goto :goto_de

    :cond_da
    move/from16 v19, v5

    move/from16 v24, v7

    :goto_de
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v24

    goto/16 :goto_3f

    :cond_e4
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 53

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v15, :cond_2e

    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    :cond_2e
    iget-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    const/16 v17, 0x3

    move/from16 v18, v6

    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move/from16 v22, v14

    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    move/from16 v23, v20

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    :goto_5c
    const/high16 v24, -0x80000000

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, v27

    move/from16 v47, v5

    move v5, v0

    move/from16 v0, v47

    move/from16 v48, v3

    move v3, v1

    move/from16 v1, v48

    move/from16 v49, v18

    move/from16 v18, v4

    move/from16 v4, v24

    move/from16 v24, v22

    move/from16 v22, v49

    :goto_7a
    const/16 v29, 0x0

    if-ge v9, v11, :cond_264

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_9a

    move/from16 v31, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v28

    add-int v1, v1, v28

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_258

    :cond_9a
    move/from16 v31, v1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b7

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    move/from16 v21, v6

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v32, v11

    move/from16 v31, v12

    goto/16 :goto_258

    :cond_b7
    add-int/lit8 v26, v26, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_c6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v30, v0, v1

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_de

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_de

    move/from16 v0, v20

    goto :goto_df

    :cond_de
    const/4 v0, 0x0

    :goto_df
    move/from16 v33, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_142

    if-eqz v33, :cond_142

    if-eqz v23, :cond_f6

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v34, v3

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_106

    :cond_f6
    move/from16 v34, v3

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_106
    if-eqz v6, :cond_12f

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    :cond_12f
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    :cond_142
    move/from16 v34, v3

    if-eqz v33, :cond_149

    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_149
    cmpl-float v0, v30, v29

    if-nez v0, :cond_150

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_151

    :cond_150
    const/4 v0, 0x0

    :goto_151
    move v3, v4

    move v4, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    move-object v1, v8

    move-object/from16 v38, v2

    move/from16 v37, v32

    move v2, v9

    move/from16 v40, v3

    move/from16 v39, v34

    move/from16 v3, p1

    move/from16 v31, v12

    move v12, v5

    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v32, v11

    const/4 v11, -0x1

    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v33, :cond_182

    move-object/from16 v1, v38

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int v25, v25, v0

    goto :goto_184

    :cond_182
    move-object/from16 v1, v38

    :goto_184
    if-eqz v23, :cond_197

    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1ac

    :cond_197
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v3, v2, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1ac
    if-eqz v14, :cond_1b6

    move/from16 v2, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    goto :goto_1b9

    :cond_1b6
    move/from16 v2, v40

    move v4, v2

    :goto_1b9
    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1c5

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v11, :cond_1c5

    const/16 v22, 0x1

    const/4 v0, 0x1

    :cond_1c5
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v39

    invoke-static {v6, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v21, :cond_210

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    if-eq v6, v11, :cond_20b

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v11, :cond_1e8

    iget v11, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_1ea

    :cond_1e8
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1ea
    and-int/lit8 v11, v11, 0x70

    shr-int/lit8 v35, v11, 0x4

    const/16 v28, -0x2

    and-int/lit8 v28, v35, -0x2

    shr-int/lit8 v28, v28, 0x1

    move/from16 v35, v2

    aget v2, v10, v28

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v28

    aget v2, v15, v28

    move/from16 v38, v4

    sub-int v4, v3, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v28

    goto :goto_214

    :cond_20b
    move/from16 v35, v2

    move/from16 v38, v4

    goto :goto_214

    :cond_210
    move/from16 v35, v2

    move/from16 v38, v4

    :goto_214
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v18, :cond_222

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_222

    move/from16 v4, v20

    goto :goto_223

    :cond_222
    const/4 v4, 0x0

    :goto_223
    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_237

    nop

    if-eqz v0, :cond_22f

    move/from16 v6, v35

    goto :goto_230

    :cond_22f
    move v6, v3

    :goto_230
    move/from16 v11, v36

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_248

    :cond_237
    move/from16 v11, v36

    if-eqz v0, :cond_23e

    move/from16 v6, v35

    goto :goto_23f

    :cond_23e
    move v6, v3

    :goto_23f
    move/from16 v12, v37

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v37, v6

    move v6, v11

    :goto_248
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v4

    move v3, v5

    move v1, v6

    move/from16 v0, v30

    move/from16 v4, v38

    move v5, v2

    move/from16 v2, v37

    :goto_258
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v31

    move/from16 v11, v32

    goto/16 :goto_7a

    :cond_264
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v31, v12

    const/16 v28, -0x2

    move v11, v1

    move v1, v2

    move v6, v3

    move v2, v4

    move v12, v5

    if-lez v26, :cond_283

    move/from16 v3, v32

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_285

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_285

    :cond_283
    move/from16 v3, v32

    :cond_285
    :goto_285
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29c

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_29c

    aget v4, v10, v19

    if-ne v4, v5, :cond_29c

    aget v4, v10, v17

    if-eq v4, v5, :cond_298

    goto :goto_29c

    :cond_298
    move/from16 v39, v6

    move v5, v12

    goto :goto_2cf

    :cond_29c
    :goto_29c
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v39, v6

    aget v6, v15, v19

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    :goto_2cf
    if-eqz v14, :cond_34b

    const/high16 v4, -0x80000000

    move/from16 v6, v31

    if-eq v6, v4, :cond_2de

    if-nez v6, :cond_2da

    goto :goto_2de

    :cond_2da
    move/from16 v32, v5

    goto/16 :goto_34f

    :cond_2de
    :goto_2de
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    :goto_2e2
    if-ge v4, v3, :cond_346

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2f8

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_33f

    :cond_2f8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_308

    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v4, v9

    move/from16 v32, v5

    goto :goto_341

    :cond_308
    nop

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v23, :cond_326

    iget v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v4

    iget v4, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    move/from16 v32, v5

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v12, v4

    iput v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_33f

    :cond_326
    move/from16 v31, v4

    move/from16 v32, v5

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v5, v4, v2

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v12

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_33f
    move/from16 v4, v31

    :goto_341
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v32

    goto :goto_2e2

    :cond_346
    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_34f

    :cond_34b
    move/from16 v32, v5

    move/from16 v6, v31

    :goto_34f
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, p1

    move/from16 v8, v28

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v12

    const v9, 0xffffff

    and-int v4, v12, v9

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v4, v9

    iget-boolean v8, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v8, :cond_37b

    const/4 v8, 0x0

    goto :goto_37d

    :cond_37b
    move/from16 v8, v25

    :goto_37d
    add-int/2addr v9, v8

    if-nez v24, :cond_41d

    sget-boolean v31, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v31, :cond_386

    if-eqz v9, :cond_392

    :cond_386
    cmpl-float v31, v0, v29

    if-lez v31, :cond_392

    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    goto/16 :goto_423

    :cond_392
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v14, :cond_3fd

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_3fd

    const/4 v8, 0x0

    :goto_39d
    if-ge v8, v3, :cond_3f4

    move/from16 v33, v0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3e3

    move/from16 v16, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v35, v4

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3b6

    move/from16 v36, v9

    goto :goto_3e9

    :cond_3b6
    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v17, v4, v29

    if-lez v17, :cond_3dc

    nop

    move-object/from16 v17, v1

    move/from16 v19, v4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move/from16 v36, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/view/View;->measure(II)V

    goto :goto_3e9

    :cond_3dc
    move-object/from16 v17, v1

    move/from16 v19, v4

    move/from16 v36, v9

    goto :goto_3e9

    :cond_3e3
    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_3e9
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v4, v35

    move/from16 v9, v36

    goto :goto_39d

    :cond_3f4
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    goto :goto_405

    :cond_3fd
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_405
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move/from16 v38, v12

    move/from16 v1, v16

    move/from16 v5, v32

    move/from16 v9, v36

    move/from16 v3, v39

    move/from16 v6, p2

    move/from16 v36, v11

    move/from16 v32, v14

    goto/16 :goto_615

    :cond_41d
    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_423
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v4, v0, v29

    if-lez v4, :cond_42a

    goto :goto_42c

    :cond_42a
    move/from16 v0, v33

    :goto_42c
    const/4 v4, -0x1

    aput v4, v10, v17

    aput v4, v10, v19

    aput v4, v10, v20

    const/4 v8, 0x0

    aput v4, v10, v8

    aput v4, v15, v17

    aput v4, v15, v19

    aput v4, v15, v20

    aput v4, v15, v8

    const/4 v4, -0x1

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v8, 0x0

    move v9, v8

    move v8, v4

    move/from16 v4, v39

    move/from16 v47, v36

    move/from16 v36, v11

    move/from16 v11, v47

    :goto_44c
    if-ge v9, v3, :cond_5b7

    move/from16 v32, v14

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_599

    move/from16 v37, v3

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_46d

    move/from16 v40, v2

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_5a6

    :cond_46d
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v38, v5, v29

    if-lez v38, :cond_4e0

    move/from16 v38, v12

    int-to-float v12, v11

    mul-float/2addr v12, v5

    div-float/2addr v12, v0

    float-to-int v12, v12

    sub-int/2addr v11, v12

    sub-float/2addr v0, v5

    move/from16 v39, v0

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_48d

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_48d

    move v0, v2

    goto :goto_4a0

    :cond_48d
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_49b

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_499

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_49b

    :cond_499
    move v0, v12

    goto :goto_4a0

    :cond_49b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v12

    :goto_4a0
    nop

    move/from16 v40, v2

    move/from16 v41, v5

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v42, v0

    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v6

    move/from16 v27, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v14, v5, v0}, Landroid/view/View;->measure(II)V

    nop

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v31, -0x1000000

    and-int v2, v2, v31

    invoke-static {v4, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v2, v27

    move/from16 v0, v39

    goto :goto_4ed

    :cond_4e0
    move/from16 v40, v2

    move/from16 v41, v5

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    :goto_4ed
    if-eqz v23, :cond_504

    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v11

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v11

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v12, v11

    add-int/2addr v5, v12

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_51c

    :cond_504
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_51c
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v13, v5, :cond_528

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_528

    move/from16 v5, v20

    goto :goto_529

    :cond_528
    const/4 v5, 0x0

    :goto_529
    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    move/from16 v39, v0

    if-eqz v5, :cond_53e

    move v0, v11

    goto :goto_53f

    :cond_53e
    move v0, v12

    :goto_53f
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v18, :cond_54f

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v42, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_551

    move/from16 v0, v20

    goto :goto_552

    :cond_54f
    move/from16 v42, v0

    :cond_551
    const/4 v0, 0x0

    :goto_552
    if-eqz v21, :cond_58c

    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v1

    move/from16 v18, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_587

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_564

    iget v0, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_566

    :cond_564
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_566
    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v44, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v44, v44, -0x2

    shr-int/lit8 v44, v44, 0x1

    move/from16 v45, v0

    aget v0, v10, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v44

    aget v0, v15, v44

    move/from16 v46, v2

    sub-int v2, v12, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v44

    goto :goto_592

    :cond_587
    move/from16 v46, v2

    const/16 v28, -0x2

    goto :goto_592

    :cond_58c
    move/from16 v18, v0

    move/from16 v46, v2

    const/16 v28, -0x2

    :goto_592
    move/from16 v0, v39

    move/from16 v1, v42

    move/from16 v11, v46

    goto :goto_5a7

    :cond_599
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    :goto_5a6
    move v11, v2

    :goto_5a7
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move/from16 v14, v32

    move/from16 v3, v37

    move/from16 v12, v38

    move/from16 v2, v40

    move/from16 v6, v43

    goto/16 :goto_44c

    :cond_5b7
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    move/from16 v32, v14

    move/from16 v6, p2

    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    aget v3, v10, v20

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5e3

    const/4 v3, 0x0

    aget v9, v10, v3

    if-ne v9, v5, :cond_5e3

    aget v3, v10, v19

    if-ne v3, v5, :cond_5e3

    aget v3, v10, v17

    if-eq v3, v5, :cond_5e1

    goto :goto_5e3

    :cond_5e1
    move v5, v8

    goto :goto_613

    :cond_5e3
    :goto_5e3
    aget v3, v10, v17

    const/4 v5, 0x0

    aget v9, v10, v5

    aget v11, v10, v20

    aget v12, v10, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v9, v15, v17

    aget v5, v15, v5

    aget v11, v15, v20

    aget v12, v15, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v9, v3, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    :goto_613
    move v9, v2

    move v3, v4

    :goto_615
    if-nez v18, :cond_61c

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_61c

    move v5, v1

    :cond_61c
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v3

    or-int v2, v38, v2

    shl-int/lit8 v4, v3, 0x10

    invoke-static {v0, v6, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {v7, v2, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v22, :cond_642

    move/from16 v2, p1

    move/from16 v4, v37

    invoke-direct {v7, v4, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    goto :goto_646

    :cond_642
    move/from16 v2, p1

    move/from16 v4, v37

    :goto_646
    return-void
.end method

.method measureNullChild(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 44

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    iget v15, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    iget-boolean v10, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v38, v14

    move v14, v0

    move v0, v5

    move v5, v1

    move/from16 v1, v19

    move/from16 v19, v38

    move/from16 v39, v4

    move v4, v2

    move/from16 v2, v17

    move/from16 v17, v39

    move/from16 v40, v18

    move/from16 v18, v6

    move/from16 v6, v20

    move/from16 v20, v40

    :goto_41
    move/from16 v21, v4

    const/16 v23, 0x0

    const/16 v25, 0x1

    if-ge v6, v11, :cond_1c0

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_65

    move/from16 v27, v2

    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v2, v2, v22

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v11

    move/from16 v28, v13

    move/from16 v4, v21

    move/from16 v2, v27

    goto/16 :goto_1b4

    :cond_65
    move/from16 v27, v2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v28, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_82

    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v6, v2

    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v28, v13

    goto/16 :goto_1b4

    :cond_82
    add-int/lit8 v24, v1, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_91

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_91
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v29, v0, v1

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_a9

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_a9

    move/from16 v0, v25

    goto :goto_aa

    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    move/from16 v30, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v13, v2, :cond_d6

    if-eqz v30, :cond_d6

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/16 v19, 0x1

    move-object v9, v3

    move-object v3, v4

    move/from16 v33, v5

    move/from16 v26, v6

    move/from16 v22, v11

    move/from16 v2, v27

    move/from16 v8, v28

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v28, v13

    move/from16 v13, v21

    goto/16 :goto_135

    :cond_d6
    if-eqz v30, :cond_db

    const/4 v0, -0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_db
    cmpl-float v0, v29, v23

    if-nez v0, :cond_e2

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e3

    :cond_e2
    const/4 v0, 0x0

    :goto_e3
    move v2, v6

    move v6, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v26, v2

    move/from16 v32, v27

    const/high16 v27, 0x40000000    # 2.0f

    move-object v9, v3

    move/from16 v8, v28

    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v28, v13

    move/from16 v13, v21

    move/from16 v11, v27

    move-object/from16 v21, v4

    move/from16 v4, v31

    move/from16 v33, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v30, :cond_113

    const/4 v1, 0x0

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int v20, v20, v0

    :cond_113
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v21

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    if-eqz v10, :cond_133

    move/from16 v2, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_135

    :cond_133
    move/from16 v2, v32

    :goto_135
    if-ltz v15, :cond_142

    move/from16 v4, v26

    add-int/lit8 v6, v4, 0x1

    if-ne v15, v6, :cond_144

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v0, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_144

    :cond_142
    move/from16 v4, v26

    :cond_144
    :goto_144
    if-ge v4, v15, :cond_155

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_14d

    goto :goto_155

    :cond_14d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_155
    :goto_155
    const/4 v0, 0x0

    if-eq v12, v11, :cond_160

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_160

    const/16 v18, 0x1

    const/4 v0, 0x1

    :cond_160
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    move/from16 v14, v33

    invoke-static {v14, v11}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v17, :cond_184

    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v14, v1, :cond_186

    move/from16 v1, v25

    goto :goto_187

    :cond_184
    move/from16 v21, v1

    :cond_186
    const/4 v1, 0x0

    :goto_187
    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_199

    nop

    if-eqz v0, :cond_193

    move/from16 v14, v21

    goto :goto_194

    :cond_193
    move v14, v5

    :goto_194
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1a4

    :cond_199
    nop

    if-eqz v0, :cond_19f

    move/from16 v14, v21

    goto :goto_1a0

    :cond_19f
    move v14, v5

    :goto_1a0
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_1a4
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v4, v14

    move/from16 v17, v1

    move v14, v6

    move v3, v8

    move v5, v11

    move/from16 v1, v24

    move/from16 v0, v29

    move v6, v4

    move v4, v13

    :goto_1b4
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v28

    goto/16 :goto_41

    :cond_1c0
    move v8, v3

    move v4, v6

    move/from16 v22, v11

    move/from16 v28, v13

    move/from16 v13, v21

    const/high16 v11, 0x40000000    # 2.0f

    if-lez v1, :cond_1dc

    move/from16 v3, v22

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1de

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1de

    :cond_1dc
    move/from16 v3, v22

    :cond_1de
    :goto_1de
    if-eqz v10, :cond_246

    const/high16 v4, -0x80000000

    move/from16 v6, v28

    if-eq v6, v4, :cond_1ec

    if-nez v6, :cond_1e9

    goto :goto_1ec

    :cond_1e9
    move/from16 v21, v1

    goto :goto_24a

    :cond_1ec
    :goto_1ec
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    :goto_1f0
    if-ge v4, v3, :cond_241

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_207

    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v11, v11, v21

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v21, v1

    move/from16 v28, v4

    goto :goto_238

    :cond_207
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v21, v1

    const/16 v1, 0x8

    if-ne v11, v1, :cond_217

    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_23a

    :cond_217
    nop

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v22, v11, v2

    move/from16 v28, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v22, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v22, v22, v4

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v22, v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_238
    move/from16 v4, v28

    :goto_23a
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v21

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_1f0

    :cond_241
    move/from16 v21, v1

    move/from16 v28, v4

    goto :goto_24a

    :cond_246
    move/from16 v21, v1

    move/from16 v6, v28

    :goto_24a
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v9

    add-int/2addr v1, v4

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, p2

    const/4 v9, 0x0

    invoke-static {v1, v4, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v11

    const v9, 0xffffff

    and-int v1, v11, v9

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v1, v9

    move/from16 v22, v1

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_276

    const/4 v1, 0x0

    goto :goto_278

    :cond_276
    move/from16 v1, v20

    :goto_278
    add-int/2addr v9, v1

    if-nez v19, :cond_312

    sget-boolean v1, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v1, :cond_281

    if-eqz v9, :cond_28d

    :cond_281
    cmpl-float v1, v0, v23

    if-lez v1, :cond_28d

    move/from16 v28, v0

    move/from16 v33, v5

    move/from16 v29, v8

    goto/16 :goto_318

    :cond_28d
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v10, :cond_2f8

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v6, v13, :cond_2f8

    const/4 v13, 0x0

    :goto_298
    if-ge v13, v3, :cond_2ef

    move/from16 v28, v0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2de

    move/from16 v16, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v33, v5

    const/16 v5, 0x8

    if-ne v1, v5, :cond_2b1

    move/from16 v29, v8

    goto :goto_2e4

    :cond_2b1
    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v25, v5, v23

    if-lez v25, :cond_2d7

    nop

    move-object/from16 v25, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v27, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v29, v8

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    goto :goto_2e4

    :cond_2d7
    move-object/from16 v25, v1

    move/from16 v27, v5

    move/from16 v29, v8

    goto :goto_2e4

    :cond_2de
    move/from16 v16, v1

    move/from16 v33, v5

    move/from16 v29, v8

    :goto_2e4
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v0, v28

    move/from16 v8, v29

    move/from16 v5, v33

    goto :goto_298

    :cond_2ef
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v33, v5

    move/from16 v29, v8

    goto :goto_300

    :cond_2f8
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v33, v5

    move/from16 v29, v8

    :goto_300
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v1, v16

    move/from16 v5, v33

    move/from16 v6, p1

    goto/16 :goto_449

    :cond_312
    move/from16 v28, v0

    move/from16 v33, v5

    move/from16 v29, v8

    :goto_318
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v1, v0, v23

    if-lez v1, :cond_31f

    goto :goto_321

    :cond_31f
    move/from16 v0, v28

    :goto_321
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    move/from16 v5, v33

    :goto_327
    if-ge v1, v3, :cond_432

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_418

    move/from16 v30, v10

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v31, v15

    const/16 v15, 0x8

    if-ne v10, v15, :cond_345

    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    goto/16 :goto_424

    :cond_345
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v32, v15, v23

    if-lez v32, :cond_3af

    move/from16 v32, v3

    int-to-float v3, v9

    mul-float/2addr v3, v15

    div-float/2addr v3, v0

    float-to-int v3, v3

    sub-int/2addr v9, v3

    sub-float/2addr v0, v15

    move/from16 v33, v0

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_365

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_365

    move v0, v2

    goto :goto_378

    :cond_365
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_373

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_371

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_373

    :cond_371
    move v0, v3

    goto :goto_378

    :cond_373
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    :goto_378
    nop

    move/from16 v34, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v35, v0

    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v36, v6

    move/from16 v6, p1

    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v5, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v33

    goto :goto_3b7

    :cond_3af
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    :goto_3b7
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_3d5

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v33, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3d7

    move/from16 v0, v25

    goto :goto_3d8

    :cond_3d5
    move/from16 v33, v2

    :cond_3d7
    const/4 v0, 0x0

    :goto_3d8
    nop

    if-eqz v0, :cond_3de

    move/from16 v2, v33

    goto :goto_3df

    :cond_3de
    move v2, v3

    :goto_3df
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v17, :cond_3ef

    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    if-ne v13, v0, :cond_3f2

    move/from16 v13, v25

    goto :goto_3f3

    :cond_3ef
    move/from16 v35, v0

    const/4 v0, -0x1

    :cond_3f2
    const/4 v13, 0x0

    :goto_3f3
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v37, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v17, v17, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v17, v2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v17, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v13, v37

    goto :goto_424

    :cond_418
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    :goto_424
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v30

    move/from16 v15, v31

    move/from16 v3, v32

    move/from16 v2, v34

    move/from16 v6, v36

    goto/16 :goto_327

    :cond_432
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v1, v13

    :goto_449
    if-nez v17, :cond_450

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_450

    move v14, v1

    :cond_450
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v11}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v18, :cond_46d

    move/from16 v2, v32

    invoke-direct {v7, v2, v4}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    goto :goto_46f

    :cond_46d
    move/from16 v2, v32

    :goto_46f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_c

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    :goto_c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1b

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    :goto_1b
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_13
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_14
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
