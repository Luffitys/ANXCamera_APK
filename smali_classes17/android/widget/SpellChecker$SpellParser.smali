.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    aget-object v2, p3, v1

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-le v3, p2, :cond_d

    goto :goto_17

    :cond_d
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p2, :cond_14

    goto :goto_17

    :cond_14
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .registers 6

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public parse()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z
    invoke-static {v2}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2b

    :cond_25
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    :goto_2b
    iget-object v5, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    add-int/lit16 v6, v2, 0x15e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_64

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    if-eq v9, v8, :cond_6e

    iget-object v10, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v10}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v7

    goto :goto_6e

    :cond_64
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    :cond_6e
    :goto_6e
    if-ne v9, v8, :cond_74

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_74
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v5, 0x1

    const-class v12, Landroid/text/style/SpellCheckSpan;

    invoke-interface {v1, v10, v11, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/SpellCheckSpan;

    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v5, 0x1

    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v11, v12, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/SuggestionSpan;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z
    invoke-static {v14}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v14

    if-eqz v14, :cond_152

    if-ge v6, v5, :cond_99

    const/4 v13, 0x1

    :cond_99
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v3}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v3

    const/4 v14, 0x1

    if-eq v3, v8, :cond_a8

    move v15, v14

    goto :goto_a9

    :cond_a8
    move v15, v4

    :goto_a9
    if-eqz v15, :cond_bb

    iget-object v4, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v4}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v3

    if-eq v3, v8, :cond_b9

    move v4, v14

    goto :goto_ba

    :cond_b9
    const/4 v4, 0x0

    :goto_ba
    move v15, v4

    :cond_bb
    if-nez v15, :cond_c1

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_c1
    move v4, v7

    const/4 v14, 0x1

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_c7
    move/from16 v17, v6

    iget-object v6, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mLength:I
    invoke-static {v6}, Landroid/widget/SpellChecker;->access$600(Landroid/widget/SpellChecker;)I

    move-result v6

    if-ge v8, v6, :cond_11a

    iget-object v6, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    invoke-static {v6}, Landroid/widget/SpellChecker;->access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v6

    aget-object v6, v6, v8

    move/from16 v18, v7

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mIds:[I
    invoke-static {v7}, Landroid/widget/SpellChecker;->access$800(Landroid/widget/SpellChecker;)[I

    move-result-object v7

    aget v7, v7, v8

    if-ltz v7, :cond_10f

    invoke-virtual {v6}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v7

    if-eqz v7, :cond_ee

    move/from16 v19, v9

    goto :goto_111

    :cond_ee
    invoke-interface {v1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move/from16 v19, v9

    invoke-interface {v1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-lt v9, v4, :cond_111

    if-ge v3, v7, :cond_fd

    goto :goto_111

    :cond_fd
    if-gt v7, v4, :cond_103

    if-gt v3, v9, :cond_103

    const/4 v14, 0x0

    goto :goto_11e

    :cond_103
    invoke-interface {v1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_111

    :cond_10f
    move/from16 v19, v9

    :cond_111
    :goto_111
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v9, v19

    goto :goto_c7

    :cond_11a
    move/from16 v18, v7

    move/from16 v19, v9

    :goto_11e
    if-ge v3, v2, :cond_121

    goto :goto_14b

    :cond_121
    if-gt v3, v4, :cond_144

    # getter for: Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to spellcheck invalid region, from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    :cond_144
    if-eqz v14, :cond_14b

    iget-object v6, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # invokes: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v6, v1, v4, v3}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_14b
    :goto_14b
    nop

    move/from16 v6, v17

    move/from16 v9, v19

    goto/16 :goto_1ec

    :cond_152
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v9

    :goto_158
    if-gt v7, v5, :cond_1eb

    if-lt v9, v2, :cond_1a8

    if-le v9, v7, :cond_1a8

    if-lt v12, v3, :cond_164

    const/4 v13, 0x1

    move v3, v7

    goto/16 :goto_1ec

    :cond_164
    if-ge v7, v2, :cond_16e

    if-le v9, v2, :cond_16e

    invoke-direct {v0, v1, v2, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_16e
    if-ge v7, v5, :cond_178

    if-le v9, v5, :cond_178

    invoke-direct {v0, v1, v5, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    invoke-direct {v0, v1, v5, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_178
    const/4 v4, 0x1

    if-ne v9, v2, :cond_18c

    const/4 v8, 0x0

    :goto_17c
    array-length v14, v10

    if-ge v8, v14, :cond_18c

    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v2, :cond_189

    const/4 v4, 0x0

    goto :goto_18c

    :cond_189
    add-int/lit8 v8, v8, 0x1

    goto :goto_17c

    :cond_18c
    :goto_18c
    if-ne v7, v5, :cond_19f

    const/4 v8, 0x0

    :goto_18f
    array-length v14, v10

    if-ge v8, v14, :cond_19f

    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v5, :cond_19c

    const/4 v4, 0x0

    goto :goto_19f

    :cond_19c
    add-int/lit8 v8, v8, 0x1

    goto :goto_18f

    :cond_19f
    :goto_19f
    if-eqz v4, :cond_1a6

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # invokes: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v8, v1, v7, v9}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_1a6
    add-int/lit8 v12, v12, 0x1

    :cond_1a8
    move v4, v9

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v8}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    if-ge v6, v5, :cond_1d5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1ba

    if-lt v8, v6, :cond_1d5

    :cond_1ba
    add-int/lit16 v9, v4, 0x15e

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v1, v4, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    move v9, v8

    goto :goto_1d6

    :cond_1d5
    move v9, v8

    :goto_1d6
    const/4 v8, -0x1

    if-ne v9, v8, :cond_1db

    move v3, v7

    goto :goto_1ec

    :cond_1db
    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static {v14}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v7

    if-ne v7, v8, :cond_1e9

    move v3, v7

    goto :goto_1ec

    :cond_1e9
    goto/16 :goto_158

    :cond_1eb
    move v3, v7

    :goto_1ec
    if-eqz v13, :cond_1f7

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f7

    if-gt v3, v5, :cond_1f7

    invoke-direct {v0, v1, v3, v5}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_1fa

    :cond_1f7
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    :goto_1fa
    iget-object v4, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # invokes: Landroid/widget/SpellChecker;->spellCheck()V
    invoke-static {v4}, Landroid/widget/SpellChecker;->access$1000(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method public parse(II)V
    .registers 7

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p2, v0, :cond_2e

    # getter for: Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_2f

    :cond_2e
    move v1, p2

    :goto_2f
    if-le v1, p1, :cond_43

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    :cond_43
    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void
.end method
