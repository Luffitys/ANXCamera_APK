.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;,
        Landroid/text/DynamicLayout$Builder;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final EXTRA:I = 0x3

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mJustificationMode:I

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/text/DynamicLayout$Builder;)V
    .registers 12

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    # getter for: Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    # getter for: Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    # getter for: Landroid/text/DynamicLayout$Builder;->mWidth:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v5

    # getter for: Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$600(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    # getter for: Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$700(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    # getter for: Landroid/text/DynamicLayout$Builder;->mSpacingMult:F
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$800(Landroid/text/DynamicLayout$Builder;)F

    move-result v8

    # getter for: Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$900(Landroid/text/DynamicLayout$Builder;)F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    # getter for: Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$300(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    # getter for: Landroid/text/DynamicLayout$Builder;->mIncludePad:Z
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1000(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mIncludePad:Z

    # getter for: Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1100(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    # getter for: Landroid/text/DynamicLayout$Builder;->mJustificationMode:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1200(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mJustificationMode:I

    # getter for: Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1300(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V
    .registers 31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p13

    invoke-static {v10, v9}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    move/from16 v11, p14

    invoke-virtual {v3, v11}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v3

    iput-object v9, v8, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move/from16 v12, p9

    iput-boolean v12, v8, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v13, p10

    iput v13, v8, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v14, p12

    iput v14, v8, Landroid/text/DynamicLayout;->mJustificationMode:I

    move/from16 v15, p11

    iput v15, v8, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    invoke-direct {v8, v3}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    # invokes: Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V
    invoke-static {v3}, Landroid/text/DynamicLayout$Builder;->access$100(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .registers 7

    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v1, v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    :cond_1c
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v4, v3, -0x1

    aget v4, v1, v4

    if-le v0, v4, :cond_34

    invoke-static {v1, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v1

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :cond_34
    return-void
.end method

.method private contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .registers 9

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    array-length v2, v2

    if-lez v2, :cond_14

    return v1

    :cond_14
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_25

    move-object v2, p1

    check-cast v2, Landroid/text/PrecomputedText;

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    goto :goto_2a

    :cond_25
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    :goto_2a
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt v3, v4, :cond_40

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v4, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :cond_40
    :goto_40
    return v1
.end method

.method private createBlocks()V
    .registers 6

    const/16 v0, 0x190

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    :goto_7
    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    if-gez v0, :cond_2d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    nop

    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, 0x0

    :goto_1f
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2c
    return-void

    :cond_2d
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    add-int/lit16 v0, v0, 0x190

    goto :goto_7
.end method

.method private static createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_d
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private generate(Landroid/text/DynamicLayout$Builder;)V
    .registers 13

    # getter for: Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1400(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    # getter for: Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1500(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_3f

    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1600(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    goto :goto_4f

    :cond_3f
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    # getter for: Landroid/text/DynamicLayout$Builder;->mWidth:I
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$500(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    :goto_4f
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    # getter for: Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$200(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_63

    new-array v0, v1, [I

    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_65

    :cond_63
    new-array v0, v2, [I

    :goto_65
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    # getter for: Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$1700(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    # getter for: Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->access$400(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v0, v4

    aput v4, v0, v3

    const/4 v7, 0x2

    aput v6, v0, v7

    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    sub-int v7, v6, v5

    aput v7, v0, v3

    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    iget-object v3, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v3, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7, v4, v4, v3}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_d3

    iget-object v7, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v7, :cond_b3

    new-instance v7, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v7, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v7, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_b3
    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    const-class v8, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v7, v4, v3, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v9, 0x0

    :goto_c0
    array-length v10, v8

    if-ge v9, v10, :cond_cb

    aget-object v10, v8, v9

    invoke-interface {v7, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c0

    :cond_cb
    iget-object v9, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v10, 0x800012

    invoke-interface {v7, v9, v4, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_d3
    return-void
.end method

.method private getContentMayProtrudeFromTopOrBottom(I)Z
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private updateAlwaysNeedsToBeRedrawn(I)V
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_c
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    move v2, v0

    :goto_11
    if-gt v2, v1, :cond_31

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v3, :cond_24

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    :cond_24
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_31
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v2, :cond_3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public getBlockEndLines()[I
    .registers 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndex(I)I
    .registers 3

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBlockIndices()[I
    .registers 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getBottomPadding()I
    .registers 2

    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .registers 2

    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getEndHyphenEdit(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .registers 2

    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 5

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public getLineCount()I
    .registers 2

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineExtra(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .registers 2

    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getStartHyphenEdit(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public reflow(Ljava/lang/CharSequence;III)V
    .registers 35

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    if-eq v2, v0, :cond_9

    return-void

    :cond_9
    iget-object v3, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v0, p2, -0x1

    const/16 v5, 0xa

    invoke-static {v3, v5, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    const/4 v6, 0x1

    if-gez v0, :cond_1d

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1f

    :cond_1d
    add-int/2addr v0, v6

    move v7, v0

    :goto_1f
    sub-int v0, p2, v7

    add-int v8, p3, v0

    add-int v9, p4, v0

    sub-int v0, p2, v0

    add-int v10, v0, v9

    invoke-static {v3, v5, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    if-gez v5, :cond_31

    move v5, v4

    goto :goto_32

    :cond_31
    add-int/2addr v5, v6

    :goto_32
    add-int v10, v0, v9

    sub-int v10, v5, v10

    add-int/2addr v8, v10

    add-int/2addr v9, v10

    instance-of v11, v3, Landroid/text/Spanned;

    if-eqz v11, :cond_7d

    move-object v11, v3

    check-cast v11, Landroid/text/Spanned;

    :goto_3f
    const/4 v12, 0x0

    add-int v13, v0, v9

    const-class v14, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v11, v0, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    :goto_49
    array-length v15, v13

    if-ge v14, v15, :cond_75

    aget-object v15, v13, v14

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    aget-object v6, v13, v14

    invoke-interface {v11, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ge v15, v0, :cond_63

    const/4 v12, 0x1

    sub-int v17, v0, v15

    add-int v8, v8, v17

    add-int v9, v9, v17

    sub-int v0, v0, v17

    :cond_63
    add-int v2, v0, v9

    if-le v6, v2, :cond_6f

    const/4 v2, 0x1

    add-int v12, v0, v9

    sub-int v12, v6, v12

    add-int/2addr v8, v12

    add-int/2addr v9, v12

    move v12, v2

    :cond_6f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    const/4 v6, 0x1

    goto :goto_49

    :cond_75
    if-nez v12, :cond_79

    move v2, v0

    goto :goto_7e

    :cond_79
    move-object/from16 v2, p1

    const/4 v6, 0x1

    goto :goto_3f

    :cond_7d
    move v2, v0

    :goto_7e
    invoke-virtual {v1, v2}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v11

    add-int v0, v2, v8

    invoke-virtual {v1, v0}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    add-int v12, v2, v9

    if-ne v12, v4, :cond_96

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    move v12, v0

    goto :goto_97

    :cond_96
    move v12, v0

    :goto_97
    invoke-virtual {v1, v12}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    if-ne v12, v0, :cond_a3

    const/4 v0, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    move v15, v0

    sget-object v17, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v17

    :try_start_a8
    sget-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sget-object v18, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    const/4 v14, 0x0

    sput-object v14, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v14, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v17
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_283

    if-nez v0, :cond_d2

    move-object/from16 p3, v0

    new-instance v0, Landroid/text/StaticLayout;

    invoke-direct {v0, v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    add-int v14, v2, v9

    move-object/from16 p3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    move/from16 p4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v2, v14, v0, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v18

    move-object/from16 v5, p3

    move-object/from16 v14, v18

    goto :goto_da

    :cond_d2
    move-object/from16 p3, v0

    move/from16 p4, v5

    move-object/from16 v5, p3

    move-object/from16 v14, v18

    :goto_da
    add-int v0, v2, v9

    invoke-virtual {v14, v3, v2, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v18, v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v7

    move/from16 p3, v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual {v0, v7, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-boolean v7, v1, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v7, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v7, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v7, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v7, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v7, v1, Landroid/text/DynamicLayout;->mJustificationMode:I

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-nez v15, :cond_130

    const/4 v7, 0x1

    goto :goto_131

    :cond_130
    const/4 v7, 0x0

    :goto_131
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v14, v0, v7}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    add-int v7, v2, v9

    if-eq v7, v4, :cond_14f

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    add-int v10, v2, v9

    if-ne v7, v10, :cond_14f

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    goto :goto_150

    :cond_14f
    move v7, v0

    :goto_150
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v10, v12, v6

    invoke-virtual {v0, v6, v10}, Landroid/text/PackedIntVector;->deleteAt(II)V

    iget-object v0, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v10, v12, v6

    invoke-virtual {v0, v6, v10}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move/from16 v19, v4

    iget-boolean v4, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_174

    if-nez v6, :cond_174

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v10

    iput v10, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    sub-int/2addr v0, v10

    :cond_174
    iget-boolean v4, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_185

    if-eqz v15, :cond_185

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v4

    iput v4, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    add-int/2addr v0, v4

    move/from16 v20, v4

    move v4, v0

    goto :goto_188

    :cond_185
    move v4, v0

    move/from16 v20, v17

    :goto_188
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v21, v15

    sub-int v15, v9, v8

    move/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v15}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v11, v13

    add-int/2addr v8, v4

    const/4 v15, 0x1

    invoke-virtual {v0, v6, v15, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    iget-boolean v0, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v8, 0x5

    if-eqz v0, :cond_1ab

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/high16 v15, -0x80000000

    aput v15, v0, v8

    move-object v15, v0

    goto :goto_1ae

    :cond_1ab
    new-array v0, v8, [I

    move-object v15, v0

    :goto_1ae
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/Layout$Directions;

    const/4 v0, 0x0

    :goto_1b2
    if-ge v0, v7, :cond_267

    move/from16 v23, v4

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    const/16 v24, 0x0

    aput v4, v15, v24

    aget v25, v15, v24

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v26

    shl-int/lit8 v26, v26, 0x1e

    or-int v25, v25, v26

    aput v25, v15, v24

    aget v25, v15, v24

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v26

    if-eqz v26, :cond_1d5

    const/high16 v26, 0x20000000

    goto :goto_1d7

    :cond_1d5
    move/from16 v26, v24

    :goto_1d7
    or-int v25, v25, v26

    aput v25, v15, v24

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v24

    add-int v24, v24, v11

    if-lez v0, :cond_1e5

    sub-int v24, v24, v10

    :cond_1e5
    const/16 v16, 0x1

    aput v24, v15, v16

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v25

    move/from16 v26, v10

    add-int/lit8 v10, v7, -0x1

    if-ne v0, v10, :cond_1f5

    add-int v25, v25, v20

    :cond_1f5
    const/4 v10, 0x2

    aput v25, v15, v10

    const/4 v10, 0x3

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v27

    aput v27, v15, v10

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    const/16 v27, 0x0

    aput-object v10, v8, v27

    add-int/lit8 v10, v7, -0x1

    if-ne v0, v10, :cond_20e

    add-int v10, v2, v9

    goto :goto_214

    :cond_20e
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v5, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v10

    :goto_214
    nop

    move/from16 p2, v2

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getStartHyphenEdit(I)I

    move-result v2

    move/from16 v28, v9

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEndHyphenEdit(I)I

    move-result v9

    invoke-static {v2, v9}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v2

    const/4 v9, 0x4

    aput v2, v15, v9

    aget v2, v15, v9

    invoke-direct {v1, v3, v4, v10}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v29

    if-eqz v29, :cond_233

    const/16 v29, 0x100

    goto :goto_235

    :cond_233
    move/from16 v29, v27

    :goto_235
    or-int v2, v2, v29

    aput v2, v15, v9

    iget-boolean v2, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v2, :cond_24c

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v2

    const/4 v9, 0x5

    aput v2, v15, v9

    const/4 v2, 0x6

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v17

    aput v17, v15, v2

    goto :goto_24d

    :cond_24c
    const/4 v9, 0x5

    :goto_24d
    iget-object v2, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v9, v6, v0

    invoke-virtual {v2, v9, v15}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    iget-object v2, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v9, v6, v0

    invoke-virtual {v2, v9, v8}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p2

    move/from16 v4, v23

    move/from16 v10, v26

    move/from16 v9, v28

    goto/16 :goto_1b2

    :cond_267
    move/from16 p2, v2

    move/from16 v23, v4

    move/from16 v28, v9

    move/from16 v26, v10

    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v1, v6, v0, v7}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    invoke-virtual {v14}, Landroid/text/StaticLayout$Builder;->finish()V

    sget-object v2, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_27a
    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v14, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v2

    return-void

    :catchall_280
    move-exception v0

    monitor-exit v2
    :try_end_282
    .catchall {:try_start_27a .. :try_end_282} :catchall_280

    throw v0

    :catchall_283
    move-exception v0

    move/from16 p2, v2

    move/from16 v19, v4

    move/from16 p4, v5

    move/from16 v18, v7

    move/from16 v22, v8

    move/from16 v28, v9

    move/from16 p3, v10

    move/from16 v21, v15

    :goto_294
    :try_start_294
    monitor-exit v17
    :try_end_295
    .catchall {:try_start_294 .. :try_end_295} :catchall_296

    throw v0

    :catchall_296
    move-exception v0

    goto :goto_294
.end method

.method public setBlockIndex(II)V
    .registers 4

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    return-void
.end method

.method public setBlocksDataForTest([I[III)V
    .registers 8

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :goto_17
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge v0, p4, :cond_2c

    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_17

    :cond_2c
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .registers 2

    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method public updateBlocks(III)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    return-void

    :cond_e
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_11
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v6, :cond_20

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v5

    if-lt v6, v1, :cond_1d

    move v3, v5

    goto :goto_20

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_20
    :goto_20
    move v5, v3

    :goto_21
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v6, :cond_30

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v5

    if-lt v6, v2, :cond_2d

    move v4, v5

    goto :goto_30

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_30
    :goto_30
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_3a

    move v5, v7

    goto :goto_3f

    :cond_3a
    add-int/lit8 v9, v3, -0x1

    aget v5, v5, v9

    add-int/2addr v5, v8

    :goto_3f
    if-le v1, v5, :cond_43

    move v5, v8

    goto :goto_44

    :cond_43
    move v5, v7

    :goto_44
    if-lez p3, :cond_48

    move v9, v8

    goto :goto_49

    :cond_48
    move v9, v7

    :goto_49
    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v10, v10, v4

    if-ge v2, v10, :cond_51

    move v10, v8

    goto :goto_52

    :cond_51
    move v10, v7

    :goto_52
    const/4 v11, 0x0

    if-eqz v5, :cond_57

    add-int/lit8 v11, v11, 0x1

    :cond_57
    if-eqz v9, :cond_5b

    add-int/lit8 v11, v11, 0x1

    :cond_5b
    if-eqz v10, :cond_5f

    add-int/lit8 v11, v11, 0x1

    :cond_5f
    sub-int v12, v4, v3

    add-int/2addr v12, v8

    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int v14, v13, v11

    sub-int/2addr v14, v12

    const/4 v15, -0x1

    if-nez v14, :cond_75

    iget-object v13, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aput v7, v13, v7

    iget-object v13, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v15, v13, v7

    iput v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void

    :cond_75
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v8, v15

    if-le v14, v8, :cond_b9

    array-length v8, v15

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v8

    array-length v13, v8

    new-array v13, v13, [I

    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v15, v7, v8, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v15, v7, v13, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v15, v4, 0x1

    move/from16 v17, v6

    add-int v6, v3, v11

    move/from16 v18, v10

    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v10, v4

    const/16 v16, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v7, v15, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v7, v4, 0x1

    add-int v10, v3, v11

    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    invoke-static {v6, v7, v13, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iput-object v13, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    goto :goto_d9

    :cond_b9
    move/from16 v17, v6

    move/from16 v18, v10

    add-int v6, v11, v12

    if-eqz v6, :cond_d9

    add-int/lit8 v6, v4, 0x1

    add-int v7, v3, v11

    sub-int/2addr v13, v4

    const/4 v8, 0x1

    sub-int/2addr v13, v8

    invoke-static {v15, v6, v15, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v7, v4, 0x1

    add-int v10, v3, v11

    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v13, v4

    sub-int/2addr v13, v8

    invoke-static {v6, v7, v6, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_da

    :cond_d9
    :goto_d9
    nop

    :goto_da
    add-int v6, v11, v12

    if-eqz v6, :cond_11a

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v6, :cond_11a

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    sub-int v7, v11, v12

    const/4 v8, 0x0

    :goto_ea
    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v8, v10, :cond_118

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v13, v3, :cond_103

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_103
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v4, :cond_115

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_115
    add-int/lit8 v8, v8, 0x1

    goto :goto_ea

    :cond_118
    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    :cond_11a
    iput v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int v6, v2, v1

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sub-int v6, p3, v6

    if-eqz v6, :cond_136

    add-int v7, v3, v11

    move v8, v7

    :goto_127
    iget v10, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v8, v10, :cond_135

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v13, v10, v8

    add-int/2addr v13, v6

    aput v13, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_127

    :cond_135
    goto :goto_138

    :cond_136
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :goto_138
    iget v8, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move v8, v3

    if-eqz v5, :cond_153

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v13, v1, -0x1

    aput v13, v10, v8

    invoke-direct {v0, v8}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v13, -0x1

    aput v13, v10, v8

    add-int/lit8 v8, v8, 0x1

    :cond_153
    if-eqz v9, :cond_167

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v13, v1, p3

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    aput v13, v10, v8

    invoke-direct {v0, v8}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v13, -0x1

    aput v13, v10, v8

    add-int/lit8 v8, v8, 0x1

    :cond_167
    if-eqz v18, :cond_177

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v13, v17, v6

    aput v13, v10, v8

    invoke-direct {v0, v8}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v13, -0x1

    aput v13, v10, v8

    :cond_177
    return-void
.end method
