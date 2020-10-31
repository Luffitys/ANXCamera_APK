.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final END_HYPHEN_MASK:I = 0x7

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final START_HYPHEN_MASK:I = 0x18

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:F = 20.0f

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .registers 12

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_c

    # getter for: Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v0

    goto :goto_29

    :cond_c
    # getter for: Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    # getter for: Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto :goto_29

    :cond_1f
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    # getter for: Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    :goto_29
    # getter for: Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    # getter for: Landroid/text/StaticLayout$Builder;->mWidth:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    # getter for: Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    # getter for: Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    # getter for: Landroid/text/StaticLayout$Builder;->mSpacingMult:F
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    # getter for: Landroid/text/StaticLayout$Builder;->mSpacingAdd:F
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_7a

    :cond_71
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    # getter for: Landroid/text/StaticLayout$Builder;->mWidth:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_7a
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    # getter for: Landroid/text/StaticLayout$Builder;->mMaxLines:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    # getter for: Landroid/text/StaticLayout$Builder;->mLeftIndents:[I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    # getter for: Landroid/text/StaticLayout$Builder;->mRightIndents:[I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    # getter for: Landroid/text/StaticLayout$Builder;->mJustificationMode:I
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    # getter for: Landroid/text/StaticLayout$Builder;->mIncludePad:Z
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    # getter for: Landroid/text/StaticLayout$Builder;->mIncludePad:Z
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_c

    move-object v1, v9

    goto :goto_1d

    :cond_c
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_17

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_1d

    :cond_17
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    :goto_1d
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_75

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    goto :goto_7c

    :cond_75
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_7c
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v13

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    # getter for: Landroid/text/StaticLayout$Builder;->mIncludePad:Z
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    # getter for: Landroid/text/StaticLayout$Builder;->mIncludePad:Z
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {p0, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    # invokes: Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_25

    if-nez p10, :cond_25

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v8, v7, v3

    add-int/2addr v8, v6

    const/4 v6, 0x0

    aput v6, v5, v8

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    return-void

    :cond_25
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int v10, p2, p1

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_7d

    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_70

    const/4 v11, 0x0

    move v13, v10

    :goto_41
    if-lez v13, :cond_6c

    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_67

    :goto_55
    if-ge v13, v10, :cond_6c

    add-int v16, v13, p1

    sub-int v14, v16, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_6c

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_55

    :cond_67
    add-float/2addr v11, v15

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    goto :goto_41

    :cond_6c
    const/4 v8, 0x0

    move v9, v13

    goto/16 :goto_118

    :cond_70
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_118

    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    :cond_7d
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_f3

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_f3

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_8b

    goto/16 :goto_f3

    :cond_8b
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_e6

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v10

    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    nop

    :goto_9b
    if-lez v15, :cond_c9

    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v6, v17, p4

    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    add-float v17, v6, v13

    cmpl-float v17, v17, v16

    if-lez v17, :cond_c2

    :goto_ad
    if-ge v15, v10, :cond_c9

    add-int v17, v15, p1

    sub-int v12, v17, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    if-nez v12, :cond_c9

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    goto :goto_ad

    :cond_c2
    move/from16 v17, v12

    add-float/2addr v13, v6

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    goto :goto_9b

    :cond_c9
    sub-float v6, v4, v5

    sub-float/2addr v6, v13

    const/4 v12, 0x0

    :goto_cd
    if-ge v12, v15, :cond_e2

    add-int v14, v12, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_de

    goto :goto_e2

    :cond_de
    add-float/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_cd

    :cond_e2
    :goto_e2
    move v8, v12

    sub-int v9, v15, v12

    goto :goto_118

    :cond_e6
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_118

    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    :cond_f3
    :goto_f3
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_f5
    if-ge v11, v10, :cond_10b

    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_107

    goto :goto_10b

    :cond_107
    add-float/2addr v6, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_f5

    :cond_10b
    :goto_10b
    move v8, v11

    sub-int v9, v10, v11

    if-eqz p10, :cond_117

    if-nez v9, :cond_117

    if-lez v10, :cond_117

    add-int/lit8 v8, v10, -0x1

    const/4 v9, 0x1

    :cond_117
    nop

    :cond_118
    :goto_118
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v12, v11, v3

    const/4 v13, 0x5

    add-int/2addr v12, v13

    aput v8, v6, v12

    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    return-void
.end method

.method private getTotalInsets(I)F
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_e

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_e
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1c

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1c
    int-to-float v1, v0

    return v1
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 58

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move/from16 v9, p18

    move/from16 v8, p23

    move-object/from16 v10, p24

    iget v7, v11, Landroid/text/StaticLayout;->mLineCount:I

    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v7, v0

    add-int v0, v16, v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    array-length v1, v0

    const/4 v4, 0x0

    if-lt v5, v1, :cond_37

    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_39

    :cond_37
    move-object/from16 v18, v0

    :goto_39
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v7, v0, :cond_52

    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_52
    if-eqz v14, :cond_d5

    move/from16 v3, p4

    iput v3, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v2, p5

    iput v2, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v1, p6

    iput v1, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    iput v0, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v19, 0x0

    move/from16 v8, v19

    :goto_68
    array-length v4, v14

    if-ge v8, v4, :cond_bd

    aget-object v4, v14, v8

    instance-of v4, v4, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v4, :cond_91

    aget-object v4, v14, v8

    check-cast v4, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v20, p12, v8

    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v19, 0x0

    move/from16 v4, v20

    move/from16 v20, v5

    move/from16 v5, p8

    move v12, v6

    move-object/from16 v6, p13

    move/from16 v21, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_a9

    :cond_91
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    aget-object v0, v14, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_a9
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v1, p6

    move/from16 v0, p7

    move v6, v12

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v12, p2

    goto :goto_68

    :cond_bd
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    iget v0, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_e4

    :cond_d5
    move/from16 v19, v4

    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    :goto_e4
    if-nez v21, :cond_e8

    move v6, v12

    goto :goto_ea

    :cond_e8
    move/from16 v6, v19

    :goto_ea
    move/from16 v26, v6

    add-int/lit8 v7, v21, 0x1

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v0, :cond_f4

    move v6, v12

    goto :goto_f6

    :cond_f4
    move/from16 v6, v19

    :goto_f6
    move/from16 v27, v6

    if-eqz v10, :cond_148

    if-eqz p28, :cond_105

    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v0, v12

    iget v1, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v1, :cond_105

    move v0, v12

    goto :goto_107

    :cond_105
    move/from16 v0, v19

    :goto_107
    move-object v8, v10

    move v10, v0

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v12, :cond_10f

    if-nez p28, :cond_113

    :cond_10f
    if-eqz v26, :cond_117

    if-nez p28, :cond_117

    :cond_113
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_121

    :cond_117
    if-nez v26, :cond_123

    if-nez v27, :cond_11d

    if-nez p28, :cond_123

    :cond_11d
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_123

    :cond_121
    move v6, v12

    goto :goto_125

    :cond_123
    move/from16 v6, v19

    :goto_125
    move/from16 v28, v6

    if-eqz v28, :cond_144

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v12, p23

    move/from16 v8, p26

    move v14, v9

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    goto :goto_14b

    :cond_144
    move/from16 v12, p23

    move v14, v9

    goto :goto_14b

    :cond_148
    move/from16 v12, p23

    move v14, v9

    :goto_14b
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_156

    const/4 v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    goto :goto_183

    :cond_156
    if-eq v12, v14, :cond_168

    if-lez v14, :cond_168

    add-int/lit8 v0, v14, -0x1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_16a

    const/4 v6, 0x1

    goto :goto_16c

    :cond_168
    move-object/from16 v1, p1

    :cond_16a
    move/from16 v6, v19

    :goto_16c
    move v0, v6

    if-ne v13, v14, :cond_177

    if-nez v0, :cond_177

    const/4 v2, 0x1

    move v0, v2

    const/4 v3, 0x1

    move/from16 v2, p2

    goto :goto_183

    :cond_177
    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v2, v14, :cond_181

    if-eqz v0, :cond_181

    const/4 v4, 0x1

    move v0, v4

    goto :goto_183

    :cond_181
    const/4 v4, 0x0

    move v0, v4

    :goto_183
    if-eqz v26, :cond_18f

    if-eqz p20, :cond_18b

    sub-int v4, v24, v22

    iput v4, v11, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_18b
    if-eqz p19, :cond_18f

    move/from16 v22, v24

    :cond_18f
    if-eqz v0, :cond_19b

    if-eqz p20, :cond_197

    sub-int v4, v25, v23

    iput v4, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_197
    if-eqz p19, :cond_19b

    move/from16 v23, v25

    :cond_19b
    if-eqz p16, :cond_1bc

    if-nez p21, :cond_1a1

    if-nez v0, :cond_1bc

    :cond_1a1
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v6, :cond_1b7

    add-double/2addr v7, v4

    double-to-int v6, v7

    goto :goto_1bb

    :cond_1b7
    neg-double v9, v4

    add-double/2addr v9, v7

    double-to-int v6, v9

    neg-int v6, v6

    :goto_1bb
    goto :goto_1bd

    :cond_1bc
    const/4 v6, 0x0

    :goto_1bd
    add-int/lit8 v4, v16, 0x0

    aput v2, v18, v4

    add-int/lit8 v4, v16, 0x1

    aput p8, v18, v4

    add-int/lit8 v4, v16, 0x2

    add-int v5, v23, v6

    aput v5, v18, v4

    add-int/lit8 v4, v16, 0x3

    aput v6, v18, v4

    iget-boolean v4, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v4, :cond_1e2

    if-eqz v27, :cond_1e2

    if-eqz p19, :cond_1da

    move/from16 v4, v25

    goto :goto_1dc

    :cond_1da
    move/from16 v4, v23

    :goto_1dc
    sub-int v5, v4, v22

    add-int v5, p8, v5

    iput v5, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1e2
    sub-int v4, v23, v22

    add-int/2addr v4, v6

    add-int v4, p8, v4

    iget v5, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v7, v16, v5

    add-int/lit8 v7, v7, 0x0

    aput v13, v18, v7

    add-int v5, v16, v5

    add-int/2addr v5, v3

    aput v4, v18, v5

    add-int/lit8 v5, v16, 0x0

    aget v7, v18, v5

    if-eqz p14, :cond_1fe

    const/high16 v8, 0x20000000

    move/from16 v19, v8

    :cond_1fe
    or-int v7, v7, v19

    aput v7, v18, v5

    add-int/lit8 v5, v16, 0x4

    aput p15, v18, v5

    add-int/lit8 v5, v16, 0x0

    aget v7, v18, v5

    shl-int/lit8 v8, v17, 0x1e

    or-int/2addr v7, v8

    aput v7, v18, v5

    iget-object v5, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v7, v2, v12

    sub-int v8, v13, v12

    move-object/from16 v9, p17

    invoke-virtual {v9, v7, v8}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    aput-object v7, v5, v21

    iget v5, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v5, v3

    iput v5, v11, Landroid/text/StaticLayout;->mLineCount:I

    return v4
.end method

.method static packHyphenEdit(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static unpackEndHyphenEdit(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static unpackStartHyphenEdit(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .registers 90

    move-object/from16 v13, p0

    # getter for: Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    # getter for: Landroid/text/StaticLayout$Builder;->mStart:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    # getter for: Landroid/text/StaticLayout$Builder;->mEnd:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    # getter for: Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v9

    # getter for: Landroid/text/StaticLayout$Builder;->mWidth:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v46

    # getter for: Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    # getter for: Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)Z

    move-result v47

    # getter for: Landroid/text/StaticLayout$Builder;->mSpacingMult:F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    # getter for: Landroid/text/StaticLayout$Builder;->mSpacingAdd:F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v49

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v7, v0

    # getter for: Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v15

    # getter for: Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)Z

    move-result v50

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    iput v6, v13, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v6, v13, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v0, v5, :cond_4c

    move v0, v6

    goto :goto_4d

    :cond_4c
    const/4 v0, -0x1

    :goto_4d
    iput v0, v13, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v23, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v48, v0

    if-nez v0, :cond_60

    const/4 v0, 0x0

    cmpl-float v0, v49, v0

    if-eqz v0, :cond_5d

    goto :goto_60

    :cond_5d
    move/from16 v16, v6

    goto :goto_62

    :cond_60
    :goto_60
    move/from16 v16, v5

    :goto_62
    # getter for: Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v24, 0x0

    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_74

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v0, :cond_71

    goto :goto_74

    :cond_71
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_ae

    :cond_74
    :goto_74
    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_7a

    move v0, v6

    goto :goto_7b

    :cond_7a
    array-length v0, v0

    :goto_7b
    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v1, :cond_81

    move v1, v6

    goto :goto_82

    :cond_81
    array-length v1, v1

    :goto_82
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [I

    const/16 v25, 0x0

    move/from16 v5, v25

    :goto_8c
    if-ge v5, v0, :cond_98

    iget-object v6, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v5

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_8c

    :cond_98
    const/4 v5, 0x0

    :goto_99
    if-ge v5, v1, :cond_ab

    aget v6, v3, v5

    move/from16 v27, v0

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v0, v0, v5

    add-int/2addr v6, v0

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v27

    goto :goto_99

    :cond_ab
    move/from16 v27, v0

    move-object v6, v3

    :goto_ae
    new-instance v0, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    # getter for: Landroid/text/StaticLayout$Builder;->mBreakStrategy:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    # getter for: Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    # getter for: Landroid/text/StaticLayout$Builder;->mJustificationMode:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v5

    new-instance v0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    move-object v3, v0

    const/16 v27, 0x0

    instance-of v0, v12, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v0, :cond_e4

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    goto :goto_e5

    :cond_e4
    move-object v0, v2

    :goto_e5
    move-object v1, v0

    instance-of v0, v12, Landroid/text/PrecomputedText;

    move/from16 v29, v7

    if-eqz v0, :cond_144

    move-object v0, v12

    check-cast v0, Landroid/text/PrecomputedText;

    nop

    # getter for: Landroid/text/StaticLayout$Builder;->mBreakStrategy:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v28

    # getter for: Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    move-object/from16 v31, v0

    move-object/from16 v51, v1

    move v1, v11

    move v2, v10

    move-object/from16 v52, v3

    move-object v3, v8

    move-object/from16 v53, v4

    move-object v4, v9

    move-object/from16 v54, v5

    const/4 v7, 0x1

    move/from16 v5, v28

    move-object/from16 v56, v6

    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)I

    move-result v0

    if-eq v0, v7, :cond_11c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_117

    goto :goto_14f

    :cond_117
    invoke-virtual/range {v31 .. v31}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    goto :goto_14f

    :cond_11c
    new-instance v1, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v1, v9}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    # getter for: Landroid/text/StaticLayout$Builder;->mBreakStrategy:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    # getter for: Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    move-object/from16 v2, v31

    invoke-static {v2, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    goto :goto_14f

    :cond_144
    move-object/from16 v51, v1

    move-object/from16 v52, v3

    move-object/from16 v53, v4

    move-object/from16 v54, v5

    move-object/from16 v56, v6

    const/4 v7, 0x1

    :goto_14f
    if-nez v27, :cond_166

    new-instance v0, Landroid/text/PrecomputedText$Params;

    # getter for: Landroid/text/StaticLayout$Builder;->mBreakStrategy:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    # getter for: Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    const/4 v6, 0x0

    invoke-static {v12, v0, v11, v10, v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    move-object/from16 v3, v27

    goto :goto_169

    :cond_166
    const/4 v6, 0x0

    move-object/from16 v3, v27

    :goto_169
    const/4 v0, 0x0

    move v2, v0

    move-object/from16 v0, v24

    :goto_16d
    array-length v1, v3

    if-ge v2, v1, :cond_609

    if-nez v2, :cond_174

    move v1, v11

    goto :goto_17a

    :cond_174
    add-int/lit8 v1, v2, -0x1

    aget-object v1, v3, v1

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_17a
    aget-object v4, v3, v2

    iget v5, v4, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    const/4 v4, 0x1

    move/from16 v24, v46

    move/from16 v25, v46

    const/16 v26, 0x0

    move-object/from16 v6, v51

    if-eqz v6, :cond_219

    const-class v7, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v6, v1, v5, v7}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/LeadingMarginSpan;

    const/16 v28, 0x0

    move-object/from16 v30, v8

    move/from16 v8, v28

    :goto_197
    move-object/from16 v31, v9

    array-length v9, v7

    if-ge v8, v9, :cond_1cd

    aget-object v9, v7, v8

    move/from16 v33, v11

    aget-object v11, v7, v8

    move-object/from16 v34, v12

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v24, v24, v11

    aget-object v11, v7, v8

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v25, v25, v11

    instance-of v11, v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_1c4

    move-object v11, v9

    check-cast v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v11}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1c4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v31

    move/from16 v11, v33

    move-object/from16 v12, v34

    goto :goto_197

    :cond_1cd
    move/from16 v33, v11

    move-object/from16 v34, v12

    const-class v8, Landroid/text/style/LineHeightSpan;

    invoke-static {v6, v1, v5, v8}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LineHeightSpan;

    array-length v9, v8

    if-nez v9, :cond_1e8

    const/16 v26, 0x0

    move-object/from16 v35, v0

    move v12, v4

    move/from16 v11, v24

    move/from16 v9, v25

    move-object/from16 v36, v26

    goto :goto_22a

    :cond_1e8
    if-eqz v0, :cond_1ee

    array-length v9, v0

    array-length v11, v8

    if-ge v9, v11, :cond_1f3

    :cond_1ee
    array-length v9, v8

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    :cond_1f3
    const/4 v9, 0x0

    :goto_1f4
    array-length v11, v8

    if-ge v9, v11, :cond_20f

    aget-object v11, v8, v9

    invoke-interface {v6, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    if-ge v11, v1, :cond_20a

    invoke-virtual {v13, v11}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v12

    aput v12, v0, v9

    goto :goto_20c

    :cond_20a
    aput v23, v0, v9

    :goto_20c
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f4

    :cond_20f
    move-object/from16 v35, v0

    move v12, v4

    move-object/from16 v36, v8

    move/from16 v11, v24

    move/from16 v9, v25

    goto :goto_22a

    :cond_219
    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v0

    move v12, v4

    move/from16 v11, v24

    move/from16 v9, v25

    move-object/from16 v36, v26

    :goto_22a
    const/4 v0, 0x0

    if-eqz v6, :cond_25a

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v6, v1, v5, v4}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/TabStopSpan;

    array-length v7, v4

    if-lez v7, :cond_257

    array-length v7, v4

    new-array v7, v7, [F

    const/4 v8, 0x0

    :goto_23c
    move-object/from16 v24, v0

    array-length v0, v4

    if-ge v8, v0, :cond_24f

    aget-object v0, v4, v8

    invoke-interface {v0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v24

    goto :goto_23c

    :cond_24f
    array-length v0, v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v0}, Ljava/util/Arrays;->sort([FII)V

    move-object v0, v7

    move-object v8, v0

    goto :goto_25e

    :cond_257
    move-object/from16 v24, v0

    goto :goto_25c

    :cond_25a
    move-object/from16 v24, v0

    :goto_25c
    move-object/from16 v8, v24

    :goto_25e
    aget-object v0, v3, v2

    iget-object v7, v0, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v37

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v38

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v39

    int-to-float v0, v9

    move-object/from16 v4, v52

    invoke-virtual {v4, v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    int-to-float v0, v11

    invoke-virtual {v4, v0, v12}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v4, v8, v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    nop

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    move/from16 v24, v2

    iget v2, v13, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v25, v12

    move-object/from16 v12, v54

    invoke-virtual {v12, v0, v4, v2}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v0

    if-ge v14, v0, :cond_2c4

    move v14, v0

    move-object/from16 v40, v3

    new-array v3, v14, [I

    move-object/from16 v17, v3

    new-array v3, v14, [F

    move-object/from16 v18, v3

    new-array v3, v14, [F

    move-object/from16 v19, v3

    new-array v3, v14, [F

    move-object/from16 v20, v3

    new-array v3, v14, [Z

    move-object/from16 v21, v3

    new-array v3, v14, [I

    move-object/from16 v52, v3

    move/from16 v41, v14

    move-object/from16 v42, v17

    move-object/from16 v43, v18

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v51, v21

    goto :goto_2d4

    :cond_2c4
    move-object/from16 v40, v3

    move/from16 v41, v14

    move-object/from16 v42, v17

    move-object/from16 v43, v18

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    :goto_2d4
    const/4 v3, 0x0

    :goto_2d5
    if-ge v3, v0, :cond_30b

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v14

    aput v14, v42, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v14

    aput v14, v43, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v14

    aput v14, v44, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v14

    aput v14, v45, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v14

    aput-boolean v14, v51, v3

    nop

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v14

    move-object/from16 v26, v4

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v4

    invoke-static {v14, v4}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v4

    aput v4, v52, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v26

    goto :goto_2d5

    :cond_30b
    move-object/from16 v26, v4

    iget v3, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v4, v13, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v3, v4

    if-eqz v15, :cond_323

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v4, :cond_321

    iget v4, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_323

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v4, :cond_323

    :cond_321
    const/4 v4, 0x1

    goto :goto_324

    :cond_323
    const/4 v4, 0x0

    :goto_324
    move/from16 v54, v4

    if-lez v3, :cond_37b

    if-ge v3, v0, :cond_37b

    if-eqz v54, :cond_37b

    const/4 v4, 0x0

    const/4 v14, 0x0

    add-int/lit8 v17, v3, -0x1

    move-object/from16 v57, v2

    move/from16 v2, v17

    :goto_334
    if-ge v2, v0, :cond_364

    move-object/from16 v58, v6

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_342

    aget v6, v43, v2

    add-float/2addr v4, v6

    move-object/from16 v59, v8

    goto :goto_35a

    :cond_342
    if-nez v2, :cond_346

    const/4 v6, 0x0

    goto :goto_34a

    :cond_346
    add-int/lit8 v6, v2, -0x1

    aget v6, v42, v6

    :goto_34a
    move-object/from16 v59, v8

    aget v8, v42, v2

    if-ge v6, v8, :cond_35a

    invoke-virtual {v7, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v8

    add-float/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v59

    goto :goto_34a

    :cond_35a
    :goto_35a
    aget-boolean v6, v51, v2

    or-int/2addr v14, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v58

    move-object/from16 v8, v59

    goto :goto_334

    :cond_364
    move-object/from16 v58, v6

    move-object/from16 v59, v8

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v6, v0, -0x1

    aget v6, v42, v6

    aput v6, v42, v2

    add-int/lit8 v2, v3, -0x1

    aput v4, v43, v2

    add-int/lit8 v2, v3, -0x1

    aput-boolean v14, v51, v2

    move v0, v3

    move v8, v0

    goto :goto_382

    :cond_37b
    move-object/from16 v57, v2

    move-object/from16 v58, v6

    move-object/from16 v59, v8

    move v8, v0

    :goto_382
    move v0, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v13, v20

    :goto_391
    if-ge v13, v5, :cond_58b

    add-int/lit8 v60, v18, 0x1

    move-object/from16 v61, v12

    aget v12, v38, v18

    mul-int/lit8 v18, v17, 0x4

    const/16 v20, 0x0

    add-int/lit8 v18, v18, 0x0

    move/from16 v21, v0

    aget v0, v39, v18

    move/from16 v55, v11

    move-object/from16 v11, v53

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v0, v17, 0x4

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v0, v39, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v0, v17, 0x4

    const/16 v22, 0x2

    add-int/lit8 v0, v0, 0x2

    aget v0, v39, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v0, v17, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v39, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v32, v17, 0x1

    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v0, v2, :cond_3cd

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_3cd
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v0, v6, :cond_3d3

    iget v6, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_3d3
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v0, v14, :cond_3d9

    iget v14, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_3d9
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v0, v4, :cond_3e2

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v19

    goto :goto_3e4

    :cond_3e2
    move/from16 v0, v19

    :goto_3e4
    if-ge v0, v8, :cond_3f3

    aget v17, v42, v0

    move/from16 v27, v2

    add-int v2, v1, v17

    if-ge v2, v13, :cond_3f5

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v27

    goto :goto_3e4

    :cond_3f3
    move/from16 v27, v2

    :cond_3f5
    move/from16 v63, v4

    move v2, v14

    move/from16 v53, v21

    move/from16 v64, v23

    move/from16 v62, v27

    :goto_3fe
    if-ge v0, v8, :cond_510

    aget v4, v42, v0

    add-int/2addr v4, v1

    if-gt v4, v12, :cond_510

    aget v4, v42, v0

    add-int v14, v1, v4

    if-ge v14, v10, :cond_40e

    move/from16 v28, v18

    goto :goto_410

    :cond_40e
    move/from16 v28, v20

    :goto_410
    if-eqz v47, :cond_41d

    aget v4, v44, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_41e

    :cond_41d
    move v4, v6

    :goto_41e
    move-object/from16 v65, v26

    if-eqz v47, :cond_42f

    aget v17, v45, v0

    move/from16 v27, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_432

    :cond_42f
    move/from16 v27, v1

    move v1, v2

    :goto_432
    move/from16 v66, v5

    move v5, v1

    aget-boolean v1, v51, v0

    move/from16 v67, v14

    move v14, v1

    aget v1, v52, v0

    move-object/from16 v68, v15

    move v15, v1

    aget v26, v43, v0

    move/from16 v69, v0

    move-object/from16 v0, p0

    move/from16 v70, v27

    move-object/from16 v1, v34

    move/from16 v72, v2

    move-object/from16 v71, v57

    move/from16 v57, v24

    move/from16 v2, v53

    move-object/from16 v73, v40

    move/from16 v40, v3

    move/from16 v3, v67

    move/from16 v74, v6

    move/from16 v75, v20

    move/from16 v6, v62

    move/from16 v78, v18

    move/from16 v77, v22

    move/from16 v76, v29

    move-object/from16 v29, v7

    move/from16 v7, v63

    move-object/from16 v79, v30

    move-object/from16 v30, v59

    move/from16 v59, v8

    move/from16 v8, v64

    move-object/from16 v80, v31

    move/from16 v31, v9

    move/from16 v9, v48

    move/from16 v81, v10

    move/from16 v10, v49

    move/from16 v82, v33

    move/from16 v33, v55

    move-object/from16 v55, v11

    move-object/from16 v11, v36

    move/from16 v84, v12

    move-object/from16 v83, v34

    move/from16 v34, v25

    move-object/from16 v12, v35

    move/from16 v85, v13

    move-object/from16 v13, v55

    move-object/from16 v17, v29

    move/from16 v18, v81

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v50

    move-object/from16 v22, v37

    move/from16 v23, v70

    move-object/from16 v24, v68

    move/from16 v25, v76

    move-object/from16 v27, v80

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v64

    move/from16 v1, v67

    move/from16 v0, v84

    if-ge v1, v0, :cond_4bc

    move-object/from16 v3, v55

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v62, v2

    move/from16 v63, v6

    move v6, v7

    move v2, v8

    goto :goto_4ca

    :cond_4bc
    move-object/from16 v3, v55

    move/from16 v2, v75

    move/from16 v6, v75

    move/from16 v7, v75

    move/from16 v8, v75

    move/from16 v63, v7

    move/from16 v62, v8

    :goto_4ca
    move/from16 v53, v1

    add-int/lit8 v7, v69, 0x1

    move-object/from16 v8, p0

    iget v9, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v10, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_4db

    iget-boolean v9, v8, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_4db

    return-void

    :cond_4db
    move v12, v0

    move-object v11, v3

    move v0, v7

    move-object/from16 v7, v29

    move/from16 v9, v31

    move/from16 v55, v33

    move/from16 v25, v34

    move/from16 v3, v40

    move/from16 v24, v57

    move/from16 v8, v59

    move-object/from16 v26, v65

    move/from16 v5, v66

    move-object/from16 v15, v68

    move/from16 v1, v70

    move-object/from16 v57, v71

    move-object/from16 v40, v73

    move/from16 v20, v75

    move/from16 v29, v76

    move/from16 v22, v77

    move/from16 v18, v78

    move-object/from16 v31, v80

    move/from16 v10, v81

    move/from16 v33, v82

    move-object/from16 v34, v83

    move/from16 v13, v85

    move-object/from16 v59, v30

    move-object/from16 v30, v79

    goto/16 :goto_3fe

    :cond_510
    move/from16 v69, v0

    move/from16 v70, v1

    move/from16 v72, v2

    move/from16 v66, v5

    move/from16 v74, v6

    move/from16 v81, v10

    move v0, v12

    move/from16 v85, v13

    move-object/from16 v68, v15

    move/from16 v78, v18

    move/from16 v75, v20

    move/from16 v77, v22

    move-object/from16 v65, v26

    move/from16 v76, v29

    move-object/from16 v79, v30

    move-object/from16 v80, v31

    move/from16 v82, v33

    move-object/from16 v83, v34

    move-object/from16 v73, v40

    move/from16 v33, v55

    move-object/from16 v71, v57

    move-object/from16 v30, v59

    move/from16 v40, v3

    move-object/from16 v29, v7

    move/from16 v59, v8

    move/from16 v31, v9

    move-object v3, v11

    move/from16 v57, v24

    move/from16 v34, v25

    move-object/from16 v8, p0

    move v13, v0

    move-object/from16 v7, v29

    move/from16 v9, v31

    move/from16 v17, v32

    move/from16 v11, v33

    move/from16 v25, v34

    move/from16 v0, v53

    move/from16 v24, v57

    move/from16 v8, v59

    move/from16 v18, v60

    move-object/from16 v12, v61

    move/from16 v2, v62

    move/from16 v4, v63

    move/from16 v23, v64

    move-object/from16 v26, v65

    move/from16 v5, v66

    move-object/from16 v15, v68

    move/from16 v19, v69

    move/from16 v1, v70

    move-object/from16 v57, v71

    move/from16 v14, v72

    move/from16 v6, v74

    move/from16 v29, v76

    move-object/from16 v31, v80

    move/from16 v10, v81

    move/from16 v33, v82

    move-object/from16 v34, v83

    move-object/from16 v53, v3

    move-object/from16 v59, v30

    move/from16 v3, v40

    move-object/from16 v40, v73

    move-object/from16 v30, v79

    goto/16 :goto_391

    :cond_58b
    move/from16 v21, v0

    move/from16 v70, v1

    move/from16 v66, v5

    move/from16 v81, v10

    move-object/from16 v61, v12

    move/from16 v85, v13

    move-object/from16 v68, v15

    move-object/from16 v65, v26

    move/from16 v76, v29

    move-object/from16 v79, v30

    move-object/from16 v80, v31

    move/from16 v82, v33

    move-object/from16 v83, v34

    move-object/from16 v73, v40

    move-object/from16 v71, v57

    move-object/from16 v30, v59

    const/16 v75, 0x0

    const/16 v77, 0x2

    const/16 v78, 0x1

    move/from16 v40, v3

    move-object/from16 v29, v7

    move/from16 v59, v8

    move/from16 v31, v9

    move/from16 v33, v11

    move/from16 v57, v24

    move/from16 v34, v25

    move-object/from16 v3, v53

    move-object/from16 v8, p0

    move/from16 v0, v66

    move/from16 v1, v81

    if-ne v0, v1, :cond_5d9

    move/from16 v7, v23

    move-object/from16 v0, v35

    move/from16 v14, v41

    move-object/from16 v2, v42

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    move-object/from16 v6, v45

    goto/16 :goto_631

    :cond_5d9
    add-int/lit8 v2, v57, 0x1

    move v10, v1

    move-object/from16 v53, v3

    move-object v13, v8

    move-object/from16 v0, v35

    move/from16 v14, v41

    move-object/from16 v17, v42

    move-object/from16 v18, v43

    move-object/from16 v19, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v51

    move-object/from16 v22, v52

    move-object/from16 v51, v58

    move-object/from16 v54, v61

    move-object/from16 v52, v65

    move-object/from16 v15, v68

    move-object/from16 v3, v73

    move/from16 v6, v75

    move/from16 v29, v76

    move/from16 v7, v78

    move-object/from16 v8, v79

    move-object/from16 v9, v80

    move/from16 v11, v82

    move-object/from16 v12, v83

    goto/16 :goto_16d

    :cond_609
    move/from16 v57, v2

    move-object/from16 v73, v3

    move-object/from16 v79, v8

    move-object/from16 v80, v9

    move v1, v10

    move/from16 v82, v11

    move-object/from16 v83, v12

    move-object v8, v13

    move-object/from16 v68, v15

    move/from16 v76, v29

    move-object/from16 v58, v51

    move-object/from16 v65, v52

    move-object/from16 v3, v53

    move-object/from16 v61, v54

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move/from16 v7, v23

    :goto_631
    move/from16 v9, v82

    if-eq v1, v9, :cond_648

    add-int/lit8 v10, v1, -0x1

    move-object/from16 v11, v83

    invoke-interface {v11, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v12, 0xa

    if-ne v10, v12, :cond_642

    goto :goto_64a

    :cond_642
    move-object/from16 v10, v79

    move-object/from16 v13, v80

    goto/16 :goto_6a8

    :cond_648
    move-object/from16 v11, v83

    :goto_64a
    iget v10, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v10, v12, :cond_6a4

    nop

    move-object/from16 v10, v79

    const/4 v12, 0x0

    invoke-static {v11, v1, v1, v10, v12}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v12

    move-object/from16 v34, v12

    move-object/from16 v13, v80

    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v15

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v24, v15

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v11

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v25, v7

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v30, v3

    move/from16 v33, v16

    move/from16 v35, v1

    move/from16 v36, p2

    move/from16 v37, p3

    move/from16 v38, v50

    move/from16 v40, v9

    move-object/from16 v41, v68

    move/from16 v42, v76

    move-object/from16 v44, v13

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v7

    goto :goto_6a8

    :cond_6a4
    move-object/from16 v10, v79

    move-object/from16 v13, v80

    :goto_6a8
    return-void
.end method

.method public getBottomPadding()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x6

    aget v0, v1, v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .registers 4

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    aget v0, v1, v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getEndHyphenEdit(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p1, :cond_37

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_37

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_37

    const/4 v1, 0x5

    const-string v2, "StaticLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz p1, :cond_44

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_44

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_44

    goto :goto_48

    :cond_44
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    :goto_48
    return v1
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 7

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_a

    return v1

    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    :cond_14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_28

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    :cond_28
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_4d

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_3a

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_3a
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_48

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_48
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_4d
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLineContainsTab(I)Z
    .registers 5

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public getLineCount()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_b

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLineExtra(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLineForVertical(I)I
    .registers 8

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_5
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    add-int v3, v0, v1

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_17

    move v0, v3

    goto :goto_5

    :cond_17
    move v1, v3

    goto :goto_5

    :cond_19
    if-gez v1, :cond_1d

    const/4 v3, 0x0

    return v3

    :cond_1d
    return v1
.end method

.method public getLineStart(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getStartHyphenEdit(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
