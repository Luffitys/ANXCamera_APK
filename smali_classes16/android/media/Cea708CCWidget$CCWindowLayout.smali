.class Landroid/media/Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    new-instance v0, Landroid/media/Cea708CCWidget$CCView;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p0, v1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    const-string v1, "captioning"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    return-void
.end method

.method private getScreenColumnCount()I
    .registers 2

    const/16 v0, 0x2a

    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .registers 12

    if-nez p2, :cond_7

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    :cond_7
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/style/CharacterStyle;

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_20

    :cond_38
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    iget v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    :goto_70
    const/16 v6, 0x20

    if-gt v2, v5, :cond_7f

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_7f

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_7f
    :goto_7f
    if-lt v5, v2, :cond_8c

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_8c

    add-int/lit8 v5, v5, -0x1

    goto :goto_7f

    :cond_8c
    if-nez v2, :cond_98

    if-ne v5, v4, :cond_98

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v6}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    :cond_98
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ge v5, v4, :cond_ab

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_ab
    if-lez v2, :cond_b0

    invoke-virtual {v6, v3, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_b0
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v3, v6}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    :goto_b5
    return-void
.end method

.method private updateTextSize()V
    .registers 11

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v4, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    :goto_2e
    cmpg-float v6, v4, v5

    if-gez v6, :cond_56

    add-float v6, v4, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget-object v8, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v8}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v7

    const v9, 0x3c23d70a    # 0.01f

    if-lez v8, :cond_53

    add-float/2addr v9, v6

    move v4, v9

    goto :goto_55

    :cond_53
    sub-float v5, v6, v9

    :goto_55
    goto :goto_2e

    :cond_56
    iget v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float/2addr v6, v5

    iput v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v7, v6}, Landroid/media/Cea708CCWidget$CCView;->setTextSize(F)V

    return-void
.end method

.method private updateWidestChar()V
    .registers 9

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    const/16 v4, 0x100

    if-ge v3, v4, :cond_34

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpg-float v6, v2, v5

    if-gez v6, :cond_31

    move v2, v5

    iput-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_34
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public clear()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    return-void
.end method

.method public clearText()V
    .registers 3

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCaptionWindowId()I
    .registers 2

    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    return-void
.end method

.method public initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eq v3, v1, :cond_17

    if-eqz v3, :cond_f

    invoke-virtual {v3, v0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_f
    iput-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1, v0}, Landroid/media/Cea708CCWidget$CCLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    :cond_17
    iget v3, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    int-to-float v3, v3

    iget-boolean v4, v2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    const/16 v5, 0x63

    if-eqz v4, :cond_22

    move v4, v5

    goto :goto_24

    :cond_22
    const/16 v4, 0x4a

    :goto_24
    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    int-to-float v4, v4

    iget-boolean v6, v2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    if-eqz v6, :cond_2e

    goto :goto_30

    :cond_2e
    const/16 v5, 0xd1

    :goto_30
    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    const-string v7, "CCWindowLayout"

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v6, :cond_3f

    cmpl-float v6, v3, v8

    if-lez v6, :cond_5b

    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_5b
    cmpg-float v6, v4, v5

    if-ltz v6, :cond_63

    cmpl-float v6, v4, v8

    if-lez v6, :cond_7f

    :cond_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_7f
    const/16 v6, 0x11

    iget v7, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    rem-int/lit8 v7, v7, 0x3

    iget v9, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    div-int/lit8 v9, v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v7, :cond_12f

    if-eq v7, v15, :cond_a4

    if-eq v7, v14, :cond_99

    goto/16 :goto_139

    :cond_99
    const/4 v6, 0x5

    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v14}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    move v13, v4

    goto/16 :goto_139

    :cond_a4
    sub-float v14, v8, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v8, v2, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    add-int/2addr v8, v15

    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v15

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_be
    if-ge v5, v8, :cond_ca

    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto :goto_be

    :cond_ca
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_103

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v5, v1

    move/from16 v18, v5

    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v5}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v19, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v19

    div-float/2addr v1, v5

    goto :goto_106

    :cond_103
    move/from16 v18, v5

    const/4 v1, 0x0

    :goto_106
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_120

    cmpg-float v5, v1, v4

    if-gez v5, :cond_120

    const/4 v6, 0x3

    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move/from16 v17, v6

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v6}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    sub-float v12, v4, v1

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v6, v17

    goto :goto_139

    :cond_120
    const/4 v6, 0x1

    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move/from16 v17, v1

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v1}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    sub-float v12, v4, v14

    add-float v13, v4, v14

    goto :goto_139

    :cond_12f
    const/4 v6, 0x3

    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v5}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    move v12, v4

    nop

    :goto_139
    if-eqz v9, :cond_155

    const/4 v1, 0x1

    if-eq v9, v1, :cond_146

    const/4 v1, 0x2

    if-eq v9, v1, :cond_142

    goto :goto_159

    :cond_142
    or-int/lit8 v6, v6, 0x50

    move v11, v3

    goto :goto_159

    :cond_146
    or-int/lit8 v6, v6, 0x10

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v8, v1, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v10, v3, v1

    add-float v11, v3, v1

    goto :goto_159

    :cond_155
    or-int/lit8 v6, v6, 0x30

    move v10, v3

    nop

    :goto_159
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    new-instance v5, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    invoke-virtual {v1, v0, v5}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    iget v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    iget v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    invoke-virtual {v0, v6}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setGravity(I)V

    iget-boolean v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    if-eqz v1, :cond_178

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_17b

    :cond_178
    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    :goto_17b
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne v0, v2, :cond_c

    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq v1, v2, :cond_13

    :cond_c
    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    iput v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    :cond_13
    return-void
.end method

.method public removeFromCaptionView()V
    .registers 2

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    :cond_f
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    return-void
.end method

.method public sendControl(C)V
    .registers 2

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 3

    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method public setCaptionWindowId(I)V
    .registers 2

    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return-void
.end method

.method public setFontScale(F)V
    .registers 2

    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    return-void
.end method

.method public setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .registers 6

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    if-eqz v0, :cond_36

    if-eq v0, v1, :cond_29

    goto :goto_43

    :cond_29
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_36
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_43
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    if-eqz v0, :cond_55

    if-eq v0, v1, :cond_4a

    goto :goto_60

    :cond_4a
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_55
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_60
    return-void
.end method

.method public setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .registers 2

    return-void
.end method

.method public setPenLocation(II)V
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    :goto_6
    if-ge v0, p1, :cond_10

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    return-void
.end method

.method public setRowLimit(I)V
    .registers 4

    if-ltz p1, :cond_5

    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A rowLimit should have a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .registers 2

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    return-void
.end method
