.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:F = 20.0f

.field public static final TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 15

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-ltz p3, :cond_2a

    if-eqz p2, :cond_17

    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_17
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/text/Layout;IZZ)[F
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Layout;IZ)F
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_24

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_24

    add-int/lit8 v5, v5, -0x1

    :cond_24
    const/4 v7, 0x0

    :goto_25
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_93

    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    if-le v9, v5, :cond_3d

    move v9, v5

    :cond_3d
    if-gt v2, v9, :cond_88

    if-lt v3, v8, :cond_88

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eq v10, v11, :cond_83

    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v17, v7, 0x1

    aget v12, v12, v17

    const/high16 v17, 0x4000000

    and-int v12, v12, v17

    if-eqz v12, :cond_6c

    const/16 v21, 0x0

    goto :goto_6e

    :cond_6c
    move/from16 v21, v14

    :goto_6e
    nop

    move/from16 v12, p4

    int-to-float v14, v12

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v17, v22

    move/from16 v18, v14

    move/from16 v19, v23

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_8c

    :cond_83
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_8c

    :cond_88
    move/from16 v12, p4

    move/from16 v0, p5

    :goto_8c
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_25

    :cond_93
    move/from16 v12, p4

    move/from16 v0, p5

    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 21

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_1f

    const/4 v8, 0x1

    goto :goto_20

    :cond_1f
    const/4 v8, 0x0

    :goto_20
    const/4 v9, 0x0

    :goto_21
    if-ge v9, v3, :cond_43

    if-eqz v8, :cond_2c

    if-ge v9, v7, :cond_2c

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2f

    :cond_2c
    const v10, 0xfeff

    :goto_2f
    add-int v11, v9, v4

    add-int/2addr v11, v5

    if-gt v1, v11, :cond_3e

    move/from16 v12, p2

    if-ge v11, v12, :cond_40

    add-int v13, p5, v11

    sub-int/2addr v13, v1

    aput-char v10, p4, v13

    goto :goto_40

    :cond_3e
    move/from16 v12, p2

    :cond_40
    :goto_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_43
    move/from16 v12, p2

    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 5

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .registers 11

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .registers 11

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-gt v1, p2, :cond_20

    const/16 v2, 0xa

    invoke-static {p0, v2, v1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_d

    move v2, p2

    :cond_d
    invoke-static {p3, p0, v1, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    cmpl-float v4, v3, p5

    if-lez v4, :cond_16

    return p5

    :cond_16
    cmpl-float v4, v3, v0

    if-lez v4, :cond_1b

    move v0, v3

    :cond_1b
    nop

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_2

    :cond_20
    return v0
.end method

.method private getHorizontal(IZ)F
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_b
    return v0
.end method

.method private getHorizontal(IZIZ)F
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    const/4 v2, 0x0

    if-eqz v16, :cond_39

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_39

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v13, v14, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    array-length v4, v3

    if-lez v4, :cond_39

    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object/from16 v18, v2

    goto :goto_3b

    :cond_39
    move-object/from16 v18, v2

    :goto_3b
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v19, v2, v5

    move-object v2, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v17

    move/from16 v9, v16

    move-object/from16 v10, v18

    move/from16 v20, v14

    move-object v14, v12

    move/from16 v12, v19

    invoke-virtual/range {v2 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    sub-int v2, p1, v13

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-virtual {v14, v2, v4, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_79

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_79

    int-to-float v2, v3

    :cond_79
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    invoke-direct {v0, v1, v3, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    return v6
.end method

.method private getHorizontal(IZZ)F
    .registers 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    iget v4, v0, Landroid/text/Layout;->mWidth:I

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_a0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v10, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v10, v8

    :goto_2e
    if-eqz v10, :cond_5b

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    array-length v12, v6

    sub-int/2addr v12, v8

    :goto_47
    if-ltz v12, :cond_5b

    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_58

    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    goto :goto_5b

    :cond_58
    add-int/lit8 v12, v12, -0x1

    goto :goto_47

    :cond_5b
    :goto_5b
    array-length v11, v6

    move v12, v10

    const/4 v13, 0x0

    :goto_5e
    if-ge v13, v11, :cond_82

    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_7e

    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    add-int v8, v15, v14

    if-ge v1, v8, :cond_7e

    const/4 v12, 0x1

    goto :goto_82

    :cond_7e
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_5e

    :cond_82
    :goto_82
    const/4 v8, 0x0

    :goto_83
    if-ge v8, v11, :cond_a0

    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_9d

    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    const/4 v14, -0x1

    if-ne v5, v14, :cond_98

    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_9d

    :cond_98
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    :cond_9d
    :goto_9d
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    :cond_a0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ad

    const/4 v7, 0x1

    if-ne v5, v7, :cond_aa

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_ac

    :cond_aa
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_ac
    goto :goto_bb

    :cond_ad
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ba

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b7

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b9

    :cond_b7
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_b9
    goto :goto_bb

    :cond_ba
    move-object v7, v2

    :goto_bb
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_d1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_c9

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_ed

    :cond_c9
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_ed

    :cond_d1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e7

    const/4 v8, 0x1

    if-ne v5, v8, :cond_e0

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_ed

    :cond_e0
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_ed

    :cond_e7
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    :goto_ed
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    if-eqz p3, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_11

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_11
    move v5, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    iget-object v10, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v17, v1, v2

    move-object v1, v11

    move-object v2, v10

    move v4, v12

    move v6, v15

    move-object v7, v14

    move v8, v13

    move-object/from16 v9, p2

    move-object/from16 v18, v10

    move/from16 v10, v16

    move-object v0, v11

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private getLineExtent(IZ)F
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    if-eqz p2, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_11

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_11
    move v13, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    const/4 v1, 0x0

    if-eqz v14, :cond_36

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_36

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v12, v13, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_36

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object v15, v1

    goto :goto_37

    :cond_36
    move-object v15, v1

    :goto_37
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    if-nez v16, :cond_3f

    const/4 v1, 0x0

    return v1

    :cond_3f
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v17

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    iget-object v10, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v19, v1, v2

    move-object v1, v11

    move-object v2, v10

    move v4, v12

    move v5, v13

    move/from16 v6, v17

    move-object/from16 v7, v16

    move v8, v14

    move-object v9, v15

    move-object/from16 v20, v10

    move/from16 v10, v18

    move-object v0, v11

    move/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_8d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private getLineHorizontals(IZZ)[F
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    const/4 v1, 0x0

    if-eqz v15, :cond_37

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_37

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v12, v13, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_37

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v17, v1

    goto :goto_39

    :cond_37
    move-object/from16 v17, v1

    :goto_39
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    add-int v18, v1, v4

    move-object v1, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v17

    move/from16 v19, v14

    move-object v14, v11

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    if-nez p3, :cond_73

    const/4 v2, 0x0

    :goto_67
    array-length v3, v1

    if-ge v2, v3, :cond_73

    aget-boolean v3, v1, v2

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_73
    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v2

    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_90

    const/4 v3, 0x0

    :goto_7e
    array-length v4, v2

    if-ge v3, v4, :cond_90

    aget v4, v2, v3

    iget v5, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8d

    int-to-float v4, v5

    aput v4, v2, v3

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_90
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    move/from16 v5, p1

    invoke-direct {v0, v5, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    sub-int v7, v13, v12

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    :goto_a5
    array-length v9, v7

    if-ge v8, v9, :cond_b1

    int-to-float v9, v6

    aget v10, v2, v8

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    :cond_b1
    return-object v7
.end method

.method private getLineStartPos(III)I
    .registers 14

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    if-ne v1, v3, :cond_12

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_14
    move-object v0, v2

    goto :goto_22

    :cond_16
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_22

    if-ne v1, v3, :cond_1f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_21

    :cond_1f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_21
    move-object v0, v2

    :cond_22
    :goto_22
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_38

    if-ne v1, v3, :cond_30

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    goto :goto_99

    :cond_30
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    goto :goto_99

    :cond_38
    const/4 v2, 0x0

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_68

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    array-length v8, v7

    if-lez v8, :cond_68

    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    :cond_68
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8a

    if-ne v1, v3, :cond_7f

    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    goto :goto_99

    :cond_7f
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    goto :goto_99

    :cond_8a
    and-int/lit8 v4, v4, -0x2

    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    :goto_99
    return v2
.end method

.method private getLineVisibleEnd(III)I
    .registers 7

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_b

    return p3

    :cond_b
    :goto_b
    if-le p3, p2, :cond_24

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1a

    add-int/lit8 v2, p3, -0x1

    return v2

    :cond_1a
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 p3, p3, -0x1

    goto :goto_b

    :cond_24
    :goto_24
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .registers 9

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_26

    const v2, 0xdfff

    if-gt v1, v2, :cond_26

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_26

    const v3, 0xdbff

    if-gt v2, v3, :cond_26

    add-int/lit8 p1, p1, -0x1

    :cond_26
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_53

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_36
    array-length v4, v2

    if-ge v3, v4, :cond_53

    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, p1, :cond_50

    if-le v5, p1, :cond_50

    move p1, v4

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_53
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v6, v9, :cond_1e

    move v9, v10

    goto :goto_1f

    :cond_1e
    move v9, v8

    :goto_1f
    if-ne v2, v9, :cond_22

    move v8, v10

    :cond_22
    if-eqz v8, :cond_32

    if-ne v1, v5, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_31

    const/4 v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_31
    return v1

    :cond_32
    if-ne v1, v4, :cond_3b

    if-lez v3, :cond_3a

    const/4 v7, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    if-eqz v7, :cond_4f

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-eq v9, v6, :cond_4f

    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    move v6, v9

    :cond_4f
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v20

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int v19, v9, v12

    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    move-object/from16 v15, v20

    invoke-virtual/range {v9 .. v19}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9
.end method

.method private getParagraphLeadingMargin(I)I
    .registers 16

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    array-length v6, v5

    if-nez v6, :cond_24

    return v1

    :cond_24
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_35

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_33

    goto :goto_35

    :cond_33
    move v8, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v8, v7

    :goto_36
    const/4 v9, 0x0

    :goto_37
    array-length v10, v5

    if-ge v9, v10, :cond_5d

    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5a

    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    add-int v13, v11, v12

    if-ge p1, v13, :cond_58

    move v13, v7

    goto :goto_59

    :cond_58
    move v13, v1

    :goto_59
    or-int/2addr v8, v13

    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    array-length v7, v5

    if-ge v1, v7, :cond_6b

    aget-object v7, v5, v1

    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_6b
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .registers 6

    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method static synthetic lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .registers 12

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 28

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    const/4 v1, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    move-object/from16 v11, p4

    :try_start_d
    invoke-static {v12, v13, v14, v11, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_e3

    move-object v10, v0

    :try_start_12
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    array-length v1, v0

    move v9, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v5, v12, Landroid/text/Spanned;
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_dd

    if-eqz v5, :cond_5a

    :try_start_28
    move-object v5, v12

    check-cast v5, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v13, v14, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    array-length v1, v8

    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v1, :cond_51

    aget-object v17, v8, v4

    move-object/from16 v18, v17

    move/from16 v17, v1

    const/4 v1, 0x1

    move/from16 v19, v2

    move-object/from16 v2, v18

    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    add-int v16, v16, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v2, v19

    goto :goto_37

    :cond_51
    move/from16 v19, v2

    move/from16 v8, v16

    goto :goto_5d

    :catchall_56
    move-exception v0

    move-object v1, v10

    goto/16 :goto_e4

    :cond_5a
    move/from16 v19, v2

    move v8, v4

    :goto_5d
    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v9, :cond_a1

    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_9a

    const/4 v2, 0x1

    instance-of v4, v12, Landroid/text/Spanned;

    if-eqz v4, :cond_93

    move-object v4, v12

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v13, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    move-object/from16 v16, v0

    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v13, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    move/from16 v17, v2

    array-length v2, v0

    if-lez v2, :cond_8e

    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v18, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_28 .. :try_end_8c} :catchall_56

    move-object v3, v2

    goto :goto_90

    :cond_8e
    move-object/from16 v18, v3

    :goto_90
    move-object/from16 v18, v3

    goto :goto_a7

    :cond_93
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_a7

    :cond_9a
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_a1
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move/from16 v17, v19

    :goto_a7
    const/4 v0, 0x0

    const/16 v19, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, v8

    move/from16 v8, v17

    move/from16 v21, v9

    move-object/from16 v9, v18

    move-object/from16 v22, v10

    move v10, v0

    move/from16 v11, v19

    :try_start_c0
    invoke-virtual/range {v1 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    move/from16 v4, v20

    int-to-float v0, v4

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_cf
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_d9

    add-float/2addr v0, v1

    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v22, :cond_d8

    invoke-virtual/range {v22 .. v22}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_d8
    return v0

    :catchall_d9
    move-exception v0

    move-object/from16 v1, v22

    goto :goto_e4

    :catchall_dd
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v1, v22

    goto :goto_e4

    :catchall_e3
    move-exception v0

    :goto_e4
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v1, :cond_ec

    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_ec
    throw v0
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 10

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_3f

    if-nez p4, :cond_14

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v1, 0x1

    :cond_14
    const/4 v2, 0x0

    :goto_15
    array-length v3, p4

    if-ge v2, v3, :cond_37

    if-nez v1, :cond_21

    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_21

    goto :goto_34

    :cond_21
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_34

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_34

    int-to-float v0, v3

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_37
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3f

    return v0

    :cond_3f
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 16

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    if-gez v10, :cond_f

    return-void

    :cond_f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    invoke-virtual {p0, p1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    iget-boolean v1, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_136

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v1, :cond_19

    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_19
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v11

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v11}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v1, :cond_12d

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v4, 0x0

    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    iget v9, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v6, p5

    move v8, v6

    :goto_41
    move/from16 v7, p6

    if-gt v8, v7, :cond_11c

    move v6, v2

    move/from16 v16, v2

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move/from16 v16, v2

    move/from16 v17, v4

    move v4, v6

    move v6, v1

    move/from16 v18, v1

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    move/from16 v18, v19

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v20, v19, v1

    if-lt v2, v5, :cond_af

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v4, v11}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    const/4 v5, 0x0

    if-ne v4, v2, :cond_78

    if-nez v4, :cond_72

    goto :goto_78

    :cond_72
    move/from16 v21, v1

    move-object/from16 v17, v3

    move v7, v5

    goto :goto_b5

    :cond_78
    :goto_78
    const/16 v17, 0x0

    move/from16 v21, v1

    move/from16 v1, v17

    :goto_7e
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v7, :cond_ab

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanStarts:[I

    aget v7, v7, v1

    if-ge v7, v2, :cond_a6

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanEnds:[I

    aget v7, v7, v1

    if-gt v7, v4, :cond_95

    goto :goto_a6

    :cond_95
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v7, [Landroid/text/style/LineBackgroundSpan;

    aget-object v7, v7, v1

    invoke-static {v3, v5, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v5, v5, 0x1

    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p6

    goto :goto_7e

    :cond_ab
    move-object/from16 v17, v3

    move v7, v5

    goto :goto_b5

    :cond_af
    move/from16 v21, v5

    move/from16 v7, v17

    move-object/from16 v17, v3

    :goto_b5
    const/4 v1, 0x0

    move v5, v1

    :goto_b7
    if-ge v5, v7, :cond_fc

    aget-object v1, v17, v5

    move-object/from16 v22, v1

    check-cast v22, Landroid/text/style/LineBackgroundSpan;

    const/16 v23, 0x0

    move-object/from16 v1, v22

    move/from16 v24, v2

    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v25, v4

    move/from16 v4, v23

    move/from16 v23, v5

    move v5, v9

    move/from16 v26, v7

    move/from16 v7, v20

    move/from16 v27, v8

    move/from16 v8, v19

    move/from16 v28, v9

    move-object v9, v12

    move-object/from16 v29, v10

    move/from16 v10, v25

    move/from16 v30, v11

    move/from16 v11, v24

    move-object/from16 v31, v12

    move/from16 v12, v27

    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v5, v23, 0x1

    move/from16 v2, v24

    move/from16 v4, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move-object/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v12, v31

    goto :goto_b7

    :cond_fc
    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v23, v5

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    add-int/lit8 v8, v27, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v1, v18

    move/from16 v5, v21

    move/from16 v4, v26

    goto/16 :goto_41

    :cond_11c
    move/from16 v18, v1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    goto :goto_131

    :cond_12d
    move/from16 v30, v11

    move-object/from16 v31, v12

    :goto_131
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    :cond_136
    if-eqz p2, :cond_149

    const/4 v1, 0x0

    if-eqz v14, :cond_13f

    int-to-float v2, v14

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_13f
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v14, :cond_149

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_149
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .registers 47

    move-object/from16 v15, p0

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    move/from16 v7, p2

    move-object v10, v5

    move v9, v7

    :goto_24
    move/from16 v8, p3

    if-gt v9, v8, :cond_365

    move v7, v1

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {v15, v9}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v20

    invoke-direct {v15, v9, v7, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v21

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    move v5, v0

    move/from16 v16, v0

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    move/from16 v23, v22

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    sub-int v0, v22, v0

    move/from16 v24, v5

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/16 v16, 0x0

    move/from16 v17, v0

    iget v0, v15, Landroid/text/Layout;->mWidth:I

    move/from16 v18, v0

    iget-boolean v0, v15, Landroid/text/Layout;->mSpannedText:Z

    move-object/from16 v19, v11

    if-eqz v0, :cond_20b

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v7, :cond_84

    move/from16 v27, v1

    add-int/lit8 v1, v7, -0x1

    invoke-interface {v12, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v28, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_82

    goto :goto_88

    :cond_82
    const/4 v1, 0x0

    goto :goto_89

    :cond_84
    move/from16 v27, v1

    move-object/from16 v28, v2

    :goto_88
    const/4 v1, 0x1

    :goto_89
    move/from16 v29, v1

    if-lt v7, v3, :cond_d1

    if-eq v9, v14, :cond_95

    if-eqz v29, :cond_92

    goto :goto_95

    :cond_92
    const/16 v26, 0x1

    goto :goto_d3

    :cond_95
    :goto_95
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v7, v11, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-static {v0, v7, v3, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    iget-object v1, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    array-length v4, v2

    const/16 v26, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_ab
    if-ltz v4, :cond_c4

    move-object/from16 v28, v1

    aget-object v1, v2, v4

    instance-of v1, v1, Landroid/text/style/AlignmentSpan;

    if-eqz v1, :cond_bf

    aget-object v1, v2, v4

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    move-object v4, v1

    goto :goto_c8

    :cond_bf
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, v28

    goto :goto_ab

    :cond_c4
    move-object/from16 v28, v1

    move-object/from16 v4, v28

    :goto_c8
    const/4 v1, 0x0

    move/from16 v31, v1

    move-object v6, v2

    move/from16 v28, v3

    move-object/from16 v30, v4

    goto :goto_db

    :cond_d1
    const/16 v26, 0x1

    :goto_d3
    move-object/from16 v30, v4

    move/from16 v31, v6

    move-object/from16 v6, v28

    move/from16 v28, v3

    :goto_db
    array-length v4, v6

    move/from16 v1, v29

    const/4 v2, 0x0

    :goto_df
    if-ge v2, v4, :cond_10f

    aget-object v3, v6, v2

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_104

    aget-object v3, v6, v2

    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v3

    move/from16 v32, v1

    aget-object v1, v6, v2

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    move-object/from16 v33, v0

    add-int v0, v1, v3

    if-ge v9, v0, :cond_108

    const/4 v0, 0x1

    move v3, v0

    goto :goto_115

    :cond_104
    move-object/from16 v33, v0

    move/from16 v32, v1

    :cond_108
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v32

    move-object/from16 v0, v33

    goto :goto_df

    :cond_10f
    move-object/from16 v33, v0

    move/from16 v32, v1

    move/from16 v3, v32

    :goto_115
    const/4 v0, 0x0

    move v2, v0

    move/from16 v34, v16

    move/from16 v32, v18

    :goto_11b
    if-ge v2, v4, :cond_1e7

    aget-object v0, v6, v2

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_1a8

    aget-object v0, v6, v2

    move-object v1, v0

    check-cast v1, Landroid/text/style/LeadingMarginSpan;

    const/4 v0, -0x1

    if-ne v5, v0, :cond_168

    move/from16 v35, v17

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p1

    move/from16 v36, v2

    move-object v2, v13

    move v14, v3

    move/from16 v3, v32

    move/from16 v37, v4

    move v4, v5

    move-object/from16 v38, v6

    move/from16 v6, v35

    move/from16 v39, v7

    move/from16 v7, v22

    move-object v8, v12

    move/from16 v40, v9

    move/from16 v9, v39

    move-object/from16 v41, v10

    move/from16 v10, v21

    move-object/from16 v42, v19

    move/from16 v19, v11

    move/from16 v11, v29

    move-object/from16 v25, v12

    move-object/from16 v12, p0

    move/from16 v26, v5

    move/from16 v5, v24

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v15, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v32, v32, v0

    move-object/from16 v2, p0

    move-object v0, v13

    move v1, v14

    goto/16 :goto_1c3

    :cond_168
    move-object v15, v1

    move/from16 v36, v2

    move v14, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v8, v13

    move/from16 v9, v34

    move/from16 v10, v26

    move v11, v5

    move/from16 v12, v35

    move-object v0, v13

    move/from16 v13, v22

    move v1, v14

    move-object/from16 v14, v25

    move-object/from16 v2, p0

    move-object v3, v15

    move/from16 v15, v39

    move/from16 v16, v21

    move/from16 v17, v29

    move-object/from16 v18, p0

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v3, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v34, v34, v4

    goto :goto_1c3

    :cond_1a8
    move/from16 v36, v2

    move v1, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    :goto_1c3
    add-int/lit8 v3, v36, 0x1

    move/from16 v14, p2

    move/from16 v8, p3

    move-object v13, v0

    move-object v15, v2

    move v2, v3

    move/from16 v24, v5

    move/from16 v11, v19

    move-object/from16 v12, v25

    move/from16 v5, v26

    move/from16 v17, v35

    move/from16 v4, v37

    move-object/from16 v6, v38

    move/from16 v7, v39

    move/from16 v9, v40

    move-object/from16 v10, v41

    move-object/from16 v19, v42

    const/16 v26, 0x1

    move v3, v1

    goto/16 :goto_11b

    :cond_1e7
    move/from16 v36, v2

    move v1, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    move/from16 v3, v28

    move-object/from16 v4, v30

    move/from16 v6, v31

    move-object/from16 v1, v38

    goto :goto_227

    :cond_20b
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v26, v5

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v34, v16

    move/from16 v32, v18

    move-object/from16 v1, v28

    :goto_227
    move/from16 v15, v40

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v24

    if-eqz v24, :cond_247

    if-nez v6, :cond_247

    const/high16 v7, 0x41a00000    # 20.0f

    move-object/from16 v8, v41

    if-nez v8, :cond_23e

    new-instance v9, Landroid/text/Layout$TabStops;

    invoke-direct {v9, v7, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v9

    goto :goto_242

    :cond_23e
    invoke-virtual {v8, v7, v1}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    move-object v10, v8

    :goto_242
    const/4 v6, 0x1

    move/from16 v28, v6

    move-object v14, v10

    goto :goto_24c

    :cond_247
    move-object/from16 v8, v41

    move/from16 v28, v6

    move-object v14, v8

    :goto_24c
    move-object v6, v4

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_25e

    move/from16 v13, v26

    const/4 v7, 0x1

    if-ne v13, v7, :cond_259

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_25b

    :cond_259
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_25b
    move-object v6, v8

    move-object v12, v6

    goto :goto_270

    :cond_25e
    move/from16 v13, v26

    const/4 v7, 0x1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_26f

    if-ne v13, v7, :cond_26a

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_26c

    :cond_26a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_26c
    move-object v6, v8

    move-object v12, v6

    goto :goto_270

    :cond_26f
    move-object v12, v6

    :goto_270
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v12, v6, :cond_28f

    if-ne v13, v7, :cond_282

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int v7, v34, v6

    move/from16 v26, v6

    move v11, v7

    goto :goto_2c7

    :cond_282
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    sub-int v7, v32, v6

    move/from16 v26, v6

    move v11, v7

    goto :goto_2c7

    :cond_28f
    const/4 v6, 0x0

    invoke-direct {v2, v15, v14, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v12, v8, :cond_2b6

    if-ne v13, v7, :cond_2a9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    sub-int v8, v32, v6

    sub-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    goto :goto_2c7

    :cond_2a9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    sub-int v8, v34, v6

    add-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    goto :goto_2c7

    :cond_2b6
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    and-int/lit8 v6, v6, -0x2

    add-int v9, v32, v34

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    move v11, v7

    move/from16 v26, v8

    :goto_2c7
    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v10, v6, :cond_2ff

    iget-boolean v6, v2, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_2ff

    if-nez v24, :cond_2ff

    if-nez v20, :cond_2ff

    int-to-float v9, v11

    move/from16 v8, v35

    int-to-float v7, v8

    move-object/from16 v6, p1

    move/from16 v16, v7

    move-object/from16 v7, v25

    move/from16 v29, v8

    move/from16 v8, v39

    move/from16 v17, v9

    move/from16 v9, v21

    move-object/from16 v30, v10

    move/from16 v10, v17

    move-object/from16 v31, v1

    move v1, v11

    move/from16 v11, v16

    move-object/from16 v33, v12

    move-object v12, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 v7, v42

    goto :goto_350

    :cond_2ff
    move-object/from16 v31, v1

    move-object/from16 v30, v10

    move v1, v11

    move-object/from16 v33, v12

    move/from16 v29, v35

    nop

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v6

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v7

    add-int v17, v6, v7

    move-object/from16 v6, v42

    move-object v7, v0

    move-object/from16 v8, v25

    move/from16 v9, v39

    move/from16 v10, v21

    move v11, v13

    move-object/from16 v12, v30

    move/from16 v35, v13

    move/from16 v13, v24

    move-object/from16 v36, v14

    move/from16 v37, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-virtual/range {v6 .. v16}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    if-eqz v20, :cond_33f

    sub-int v6, v32, v34

    sub-int v6, v6, v26

    int-to-float v6, v6

    move-object/from16 v7, v42

    invoke-virtual {v7, v6}, Landroid/text/TextLine;->justify(F)V

    goto :goto_341

    :cond_33f
    move-object/from16 v7, v42

    :goto_341
    int-to-float v6, v1

    move-object v14, v7

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v29

    move/from16 v19, v22

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    :goto_350
    add-int/lit8 v9, v37, 0x1

    move/from16 v14, p2

    move-object v13, v0

    move-object v15, v2

    move-object v11, v7

    move/from16 v0, v23

    move-object/from16 v12, v25

    move/from16 v1, v27

    move/from16 v6, v28

    move-object/from16 v2, v31

    move-object/from16 v10, v36

    goto/16 :goto_24

    :cond_365
    move-object v7, v11

    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    const/4 v14, 0x0

    if-nez v11, :cond_38

    if-eqz v13, :cond_42

    :cond_38
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    if-eqz v13, :cond_3f

    add-int/2addr v4, v14

    :cond_3f
    if-eqz v11, :cond_42

    sub-int/2addr v5, v14

    :cond_42
    cmpg-float v15, v8, v9

    if-gez v15, :cond_48

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_48
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    if-ne v11, v12, :cond_6c

    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v15, v14

    sub-float v15, v8, v15

    add-int v12, v5, v14

    int-to-float v12, v12

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9a

    :cond_6c
    if-ne v11, v10, :cond_9a

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9a
    :goto_9a
    const/4 v12, 0x2

    if-ne v13, v12, :cond_b7

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e5

    :cond_b7
    if-ne v13, v10, :cond_e5

    int-to-float v10, v4

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v10, v14

    add-float/2addr v10, v8

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getEndHyphenEdit(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .registers 3

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineBottomWithoutSpacing(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4

    if-eqz p2, :cond_17

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineExtra(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 6

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    move v0, v2

    goto :goto_5

    :cond_16
    move v1, v2

    goto :goto_5

    :cond_18
    if-gez v1, :cond_1c

    const/4 v2, 0x0

    return v2

    :cond_1c
    return v1
.end method

.method public getLineForVertical(I)I
    .registers 6

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    move v0, v2

    goto :goto_5

    :cond_16
    move v1, v2

    goto :goto_5

    :cond_18
    if-gez v1, :cond_1c

    const/4 v2, 0x0

    return v2

    :cond_1c
    return v1
.end method

.method public getLineLeft(I)F
    .registers 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_c
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v2, v3, :cond_32

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a

    if-eq v2, v6, :cond_27

    if-eq v2, v5, :cond_24

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_24
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_27
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_2a
    if-ne v0, v4, :cond_2f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_31

    :cond_2f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_31
    goto :goto_3a

    :cond_32
    if-ne v0, v4, :cond_37

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_39

    :cond_37
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_39
    nop

    :goto_3a
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v6, :cond_51

    if-eq v3, v5, :cond_48

    const/4 v3, 0x0

    return v3

    :cond_48
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    :cond_51
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 8

    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_13
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_40

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v0, v5, :cond_33

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :cond_33
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getLineRight(I)F
    .registers 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_c

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_c
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v2, v3, :cond_32

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a

    if-eq v2, v6, :cond_27

    if-eq v2, v5, :cond_24

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_24
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_27
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3a

    :cond_2a
    if-ne v0, v4, :cond_2f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_31

    :cond_2f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_31
    goto :goto_3a

    :cond_32
    if-ne v0, v4, :cond_37

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_39

    :cond_37
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_39
    nop

    :goto_3a
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v6, :cond_4f

    if-eq v3, v5, :cond_4b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    :cond_4b
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    :cond_4f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v16, v2, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move v5, v14

    move v6, v13

    move-object v8, v15

    move-object/from16 v17, v15

    move-object v15, v12

    move/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V

    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_49

    move v4, v13

    goto :goto_57

    :cond_49
    sub-int v4, v13, v14

    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v15, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v14

    :goto_57
    move v6, v14

    invoke-virtual {v2, v14}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v7

    sub-float v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x0

    :goto_63
    move-object/from16 v9, v17

    iget-object v10, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v10, v10

    if-ge v8, v10, :cond_139

    iget-object v10, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v10, v10, v8

    add-int/2addr v10, v14

    iget-object v11, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v12

    const v12, 0x3ffffff

    and-int/2addr v11, v12

    add-int/2addr v11, v10

    iget-object v12, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v8, 0x1

    aget v12, v12, v16

    const/high16 v16, 0x4000000

    and-int v12, v12, v16

    const/16 v16, 0x0

    if-eqz v12, :cond_8a

    move v12, v5

    goto :goto_8c

    :cond_8a
    move/from16 v12, v16

    :goto_8c
    if-eqz v12, :cond_91

    const/16 v17, -0x1

    goto :goto_93

    :cond_91
    move/from16 v17, v5

    :goto_93
    move/from16 v18, v17

    if-le v11, v4, :cond_98

    move v11, v4

    :cond_98
    add-int/lit8 v17, v11, -0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v19, v10, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v5, v19

    :goto_a2
    sub-int v1, v17, v5

    const/4 v3, 0x1

    if-le v1, v3, :cond_d0

    add-int v1, v17, v5

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v3

    int-to-float v3, v0

    mul-float v20, v20, v3

    int-to-float v3, v0

    mul-float v3, v3, p2

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_c5

    move v3, v1

    move/from16 v17, v3

    goto :goto_c7

    :cond_c5
    move v3, v1

    move v5, v3

    :goto_c7
    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_a2

    :cond_d0
    move/from16 v0, v18

    add-int/lit8 v1, v10, 0x1

    if-ge v5, v1, :cond_d8

    add-int/lit8 v5, v10, 0x1

    :cond_d8
    if-ge v5, v11, :cond_118

    sub-int v1, v5, v14

    invoke-virtual {v15, v1, v12}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v14

    sub-int v3, v1, v14

    move/from16 v18, v0

    if-nez v12, :cond_e9

    const/4 v0, 0x1

    goto :goto_eb

    :cond_e9
    move/from16 v0, v16

    :goto_eb
    invoke-virtual {v15, v3, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v5, v0, v14

    if-lt v5, v10, :cond_11a

    if-ge v5, v11, :cond_11a

    invoke-virtual {v2, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-ge v1, v11, :cond_111

    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v3

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v16, v3, v0

    if-gez v16, :cond_111

    move v0, v3

    move v5, v1

    :cond_111
    cmpg-float v3, v0, v7

    if-gez v3, :cond_11a

    move v7, v0

    move v6, v5

    goto :goto_11a

    :cond_118
    move/from16 v18, v0

    :cond_11a
    :goto_11a
    invoke-virtual {v2, v10}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v7

    if-gez v1, :cond_12c

    move v1, v0

    move v3, v10

    move v7, v1

    move v6, v3

    :cond_12c
    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v17, v9

    const/4 v5, 0x1

    goto/16 :goto_63

    :cond_139
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v7

    if-gtz v1, :cond_148

    move v6, v4

    :cond_148
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v6
.end method

.method public getOffsetToLeftOf(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 7

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    array-length v3, v2

    if-lez v3, :cond_25

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_d

    goto :goto_12

    :cond_d
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    :cond_12
    :goto_12
    return v0
.end method

.method public final getParagraphRight(I)I
    .registers 5

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_e

    goto :goto_15

    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    :cond_15
    :goto_15
    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .registers 5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .registers 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3d

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_3d

    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_19
    array-length v6, v2

    if-ge v5, v6, :cond_34

    aget v6, v2, v5

    add-int/2addr v6, v4

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    if-lt p1, v6, :cond_31

    if-ge p1, v7, :cond_31

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_31
    add-int/lit8 v5, v5, 0x2

    goto :goto_19

    :cond_34
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public getSecondaryHorizontal(I)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .registers 5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 25

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    if-ge v1, v0, :cond_13

    move/from16 v2, p2

    move/from16 v1, p1

    move v0, v2

    move v8, v0

    move v9, v1

    goto :goto_15

    :cond_13
    move v8, v0

    move v9, v1

    :goto_15
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    if-ne v10, v11, :cond_35

    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_dc

    :cond_35
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v14, v0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_63

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_74

    :cond_63
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_74
    add-int/lit8 v0, v10, 0x1

    :goto_76
    if-ge v0, v11, :cond_9e

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v15, :cond_91

    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_9b

    :cond_91
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_9e
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v15, :cond_c9

    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_dc

    :cond_c9
    const/16 v16, 0x0

    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v18

    int-to-float v1, v13

    const/16 v20, 0x1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v19, v1

    invoke-interface/range {v15 .. v20}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_dc
    return-void
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 5

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;

    invoke-direct {v0, p3}, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public final getSpacingAdd()F
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public getStartHyphenEdit(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_7

    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLevelBoundary(I)Z
    .registers 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4c

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_4c

    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq p1, v4, :cond_30

    if-ne p1, v5, :cond_22

    goto :goto_30

    :cond_22
    sub-int/2addr p1, v4

    const/4 v7, 0x0

    :goto_24
    array-length v8, v2

    if-ge v7, v8, :cond_2f

    aget v8, v2, v7

    if-ne p1, v8, :cond_2c

    return v6

    :cond_2c
    add-int/lit8 v7, v7, 0x2

    goto :goto_24

    :cond_2f
    return v3

    :cond_30
    :goto_30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_38

    move v7, v3

    goto :goto_39

    :cond_38
    move v7, v6

    :goto_39
    if-ne p1, v4, :cond_3d

    move v8, v3

    goto :goto_40

    :cond_3d
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    :goto_40
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_4b

    move v3, v6

    :cond_4b
    return v3

    :cond_4c
    :goto_4c
    return v3
.end method

.method public isRtlCharAt(I)Z
    .registers 13

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    return v3

    :cond_e
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    return v4

    :cond_14
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_1b
    array-length v7, v2

    if-ge v6, v7, :cond_3f

    aget v7, v2, v6

    add-int/2addr v7, v5

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    if-lt p1, v7, :cond_3c

    if-ge p1, v8, :cond_3c

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_3b

    move v3, v4

    :cond_3b
    return v3

    :cond_3c
    add-int/lit8 v6, v6, 0x2

    goto :goto_1b

    :cond_3f
    return v3
.end method

.method protected final isSpanned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public primaryIsTrailingPrevious(I)Z
    .registers 14

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_14
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3a

    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    if-le v9, v2, :cond_27

    move v9, v2

    :cond_27
    if-lt p1, v6, :cond_37

    if-ge p1, v9, :cond_37

    if-le p1, v6, :cond_2e

    return v8

    :cond_2e
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    goto :goto_3a

    :cond_37
    add-int/lit8 v5, v5, 0x2

    goto :goto_14

    :cond_3a
    :goto_3a
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_48

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_46

    move v5, v8

    goto :goto_47

    :cond_46
    move v5, v6

    :goto_47
    move v4, v5

    :cond_48
    const/4 v5, -0x1

    if-ne p1, v1, :cond_56

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_53

    move v7, v8

    goto :goto_54

    :cond_53
    move v7, v6

    :goto_54
    move v5, v7

    goto :goto_78

    :cond_56
    add-int/lit8 p1, p1, -0x1

    const/4 v9, 0x0

    :goto_59
    array-length v10, v3

    if-ge v9, v10, :cond_78

    aget v10, v3, v9

    add-int/2addr v10, v1

    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    if-le v11, v2, :cond_68

    move v11, v2

    :cond_68
    if-lt p1, v10, :cond_75

    if-ge p1, v11, :cond_75

    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    goto :goto_78

    :cond_75
    add-int/lit8 v9, v9, 0x2

    goto :goto_59

    :cond_78
    :goto_78
    if-ge v5, v4, :cond_7b

    move v8, v6

    :cond_7b
    return v8
.end method

.method public primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .registers 14

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_1a
    array-length v7, v2

    if-ge v6, v7, :cond_40

    aget v7, v2, v6

    add-int/2addr v7, v0

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    if-le v8, v1, :cond_2c

    move v8, v1

    :cond_2c
    if-ne v8, v7, :cond_2f

    goto :goto_3d

    :cond_2f
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    :goto_3d
    add-int/lit8 v6, v6, 0x2

    goto :goto_1a

    :cond_40
    const/4 v6, 0x0

    :goto_41
    array-length v7, v2

    if-ge v6, v7, :cond_6c

    aget v7, v2, v6

    add-int/2addr v7, v0

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_5f

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_5d

    move v11, v10

    goto :goto_64

    :cond_5d
    move v11, v4

    goto :goto_64

    :cond_5f
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_64
    if-le v8, v11, :cond_67

    move v10, v4

    :cond_67
    aput-boolean v10, v3, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_41

    :cond_6c
    return-object v3
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10

    if-ltz p3, :cond_13

    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setJustificationMode(I)V
    .registers 2

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .registers 6

    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v3, 0x5

    if-eq v0, v3, :cond_14

    return v1

    :cond_14
    return v2

    :cond_15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method
