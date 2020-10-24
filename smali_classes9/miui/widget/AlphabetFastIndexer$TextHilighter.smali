.class Lmiui/widget/AlphabetFastIndexer$TextHilighter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field mActivatedColor:I

.field mHilightColor:I

.field mIndexerTextSize:I

.field mIndexes:[Ljava/lang/String;

.field mNormalColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/internal/R$array;->alphabet_table:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :cond_2
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextColor:I

    sget v1, Lcom/miui/internal/R$color;->alphabet_indexer_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextActivatedColor:I

    sget v1, Lcom/miui/internal/R$color;->alphabet_indexer_activated_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextHighlightColor:I

    sget v1, Lcom/miui/internal/R$color;->alphabet_indexer_highlight_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextSize:I

    sget v1, Lcom/miui/internal/R$dimen;->alphabet_indexer_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexerTextSize:I

    return-void
.end method
