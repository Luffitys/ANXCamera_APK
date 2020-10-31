.class Lmiui/widget/AlphabetFastIndexer$TextHilighter;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextHilighter"
.end annotation


# instance fields
.field mActivatedColor:I

.field mHilightColor:I

.field mIndexerTextSize:I

.field mIndexes:[Ljava/lang/String;

.field mNormalColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2a

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_29

    aget-object v5, v1, v4

    iget-object v6, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_17

    :cond_29
    goto :goto_32

    :cond_2a
    sget v2, Lcom/miui/internal/R$array;->alphabet_table:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    :goto_32
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3d

    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    aget-object v2, v2, v4

    :cond_3d
    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextColor:I

    sget v3, Lcom/miui/internal/R$color;->alphabet_indexer_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextActivatedColor:I

    sget v3, Lcom/miui/internal/R$color;->alphabet_indexer_activated_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextHighlightColor:I

    sget v3, Lcom/miui/internal/R$color;->alphabet_indexer_highlight_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextSize:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexerTextSize:I

    return-void
.end method
