.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_1c
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_39

    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_39

    :cond_33
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    :cond_39
    :goto_39
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8

    const-string v0, " "

    if-lt p3, p2, :cond_56

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-gt p2, v1, :cond_32

    if-gt p3, v1, :cond_32

    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    return-void

    :cond_11
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " starts before 0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ends beyond length "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has end before start"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copySpans(Landroid/text/SpannableStringInternal;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    return-void
.end method

.method private copySpans(Landroid/text/Spanned;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    return-void
.end method

.method private copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    iget-object v5, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v6, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v7, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_11
    const/4 v10, 0x0

    if-ge v9, v7, :cond_35

    mul-int/lit8 v11, v9, 0x3

    add-int/2addr v11, v10

    aget v10, v5, v11

    mul-int/lit8 v11, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    invoke-direct {v0, v2, v3, v10, v11}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_32

    :cond_26
    aget-object v12, v6, v9

    instance-of v12, v12, Landroid/text/NoCopySpan;

    if-eqz v12, :cond_30

    const/4 v8, 0x1

    if-eqz p4, :cond_30

    goto :goto_32

    :cond_30
    add-int/lit8 v4, v4, 0x1

    :goto_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_35
    if-nez v4, :cond_38

    return-void

    :cond_38
    if-nez v8, :cond_65

    if-nez v2, :cond_65

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v9

    if-ne v3, v9, :cond_65

    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v9, v9

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v11, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v11, v11

    new-array v11, v11, [I

    iput-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v11, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v11, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v11, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v12, v11

    invoke-static {v11, v10, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v12, v11

    invoke-static {v9, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c2

    :cond_65
    iput v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [I

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_76
    if-ge v9, v7, :cond_c2

    mul-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v10

    aget v12, v5, v12

    mul-int/lit8 v13, v9, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v5, v13

    invoke-direct {v0, v2, v3, v12, v13}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v14

    if-nez v14, :cond_bf

    if-eqz p4, :cond_92

    aget-object v14, v6, v9

    instance-of v14, v14, Landroid/text/NoCopySpan;

    if-eqz v14, :cond_92

    goto :goto_bf

    :cond_92
    if-ge v12, v2, :cond_96

    move/from16 v12, p2

    :cond_96
    if-le v13, v3, :cond_9a

    move/from16 v13, p3

    :cond_9a
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v15, v6, v9

    aput-object v15, v14, v11

    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v10

    sub-int v16, v12, v2

    aput v16, v14, v15

    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x1

    sub-int v16, v13, v2

    aput v16, v14, v15

    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v9, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v5, v16

    aput v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    :cond_bf
    :goto_bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_76

    :cond_c2
    :goto_c2
    return-void
.end method

.method private copySpansFromSpanned(Landroid/text/Spanned;IIZ)V
    .registers 16

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    if-eqz p4, :cond_13

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_13

    goto :goto_37

    :cond_13
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, p2, :cond_28

    move v2, p2

    :cond_28
    if-le v3, p3, :cond_2b

    move v3, p3

    :cond_2b
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3a
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .registers 4

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_14

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .registers 6

    const/4 v0, 0x1

    if-gt p3, p2, :cond_11

    if-ge p4, p1, :cond_6

    goto :goto_11

    :cond_6
    if-eq p3, p4, :cond_f

    if-eq p1, p2, :cond_f

    if-eq p3, p2, :cond_e

    if-ne p4, p1, :cond_f

    :cond_e
    return v0

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 9

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_24
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 9

    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p2

    move/from16 v11, p3

    const-string/jumbo v0, "setSpan"

    invoke-direct {v6, v0, v8, v9}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_7a

    invoke-direct {v6, v8}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " follows "

    if-eqz v0, :cond_4b

    if-nez p5, :cond_25

    return-void

    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    invoke-direct {v6, v9}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    if-nez p5, :cond_54

    return-void

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    iget v12, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v13, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v14, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v0, 0x0

    move v15, v0

    :goto_82
    const/4 v0, 0x0

    if-ge v15, v12, :cond_b6

    aget-object v1, v13, v15

    if-ne v1, v7, :cond_b3

    mul-int/lit8 v1, v15, 0x3

    add-int/2addr v1, v0

    aget v16, v14, v1

    mul-int/lit8 v1, v15, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v17, v14, v1

    mul-int/lit8 v1, v15, 0x3

    add-int/2addr v1, v0

    aput v8, v14, v1

    mul-int/lit8 v0, v15, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v14, v0

    mul-int/lit8 v0, v15, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v14, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_b3
    add-int/lit8 v15, v15, 0x1

    goto :goto_82

    :cond_b6
    iget v1, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_e1

    nop

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iput-object v2, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    :cond_e1
    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v7, v1, v2

    iget-object v1, v6, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v0

    aput v8, v1, v3

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    aput v9, v1, v0

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, v1, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Landroid/text/SpannableStringInternal;->mSpanCount:I

    instance-of v0, v6, Landroid/text/Spannable;

    if-eqz v0, :cond_105

    invoke-direct {v6, v7, v10, v11}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_105
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 3

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11

    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v5, v2

    if-ne v4, v5, :cond_86

    const/4 v4, 0x0

    :goto_30
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v4, v5, :cond_84

    aget-object v5, v3, v4

    aget-object v6, v2, v4

    if-ne v5, p0, :cond_5b

    if-ne v0, v6, :cond_5a

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    :cond_5a
    return v1

    :cond_5b
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    goto :goto_83

    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_83
    :goto_83
    return v1

    :cond_84
    const/4 v1, 0x1

    return v1

    :cond_86
    return v1
.end method

.method public final getChars(II[CI)V
    .registers 6

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_18

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    return v4

    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_18

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v2, v4

    return v4

    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_18
    const/4 v3, 0x0

    return v3
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_18

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    return v4

    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    iget v5, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v6, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v7, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_12
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v5, :cond_8e

    mul-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v11

    aget v13, v7, v13

    mul-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v12

    aget v14, v7, v14

    if-le v13, v2, :cond_24

    goto/16 :goto_89

    :cond_24
    if-ge v14, v1, :cond_28

    goto/16 :goto_89

    :cond_28
    if-eq v13, v14, :cond_32

    if-eq v1, v2, :cond_32

    if-ne v13, v2, :cond_2f

    goto :goto_89

    :cond_2f
    if-ne v14, v1, :cond_32

    goto :goto_89

    :cond_32
    if-eqz v3, :cond_41

    const-class v15, Ljava/lang/Object;

    if-eq v3, v15, :cond_41

    aget-object v15, v6, v10

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_41

    goto :goto_89

    :cond_41
    if-nez v4, :cond_48

    aget-object v9, v6, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_48
    if-ne v4, v12, :cond_56

    sub-int v15, v5, v10

    add-int/2addr v15, v12

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    aput-object v9, v8, v11

    :cond_56
    mul-int/lit8 v11, v10, 0x3

    add-int/lit8 v11, v11, 0x2

    aget v11, v7, v11

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    if-eqz v11, :cond_82

    const/4 v15, 0x0

    :goto_62
    if-ge v15, v4, :cond_73

    aget-object v1, v8, v15

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, v12

    if-le v11, v1, :cond_6e

    goto :goto_73

    :cond_6e
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    goto :goto_62

    :cond_73
    :goto_73
    add-int/lit8 v1, v15, 0x1

    sub-int v12, v4, v15

    invoke-static {v8, v15, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v6, v10

    aput-object v1, v8, v15

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_82
    add-int/lit8 v1, v4, 0x1

    aget-object v12, v6, v10

    aput-object v12, v8, v4

    move v4, v1

    :goto_89
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    goto :goto_12

    :cond_8e
    if-nez v4, :cond_95

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_95
    if-ne v4, v12, :cond_a0

    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aput-object v9, v1, v11

    return-object v1

    :cond_a0
    array-length v1, v8

    if-ne v4, v1, :cond_a4

    return-object v8

    :cond_a4
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v8, v11, v1, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public hashCode()I
    .registers 6

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v1, v2

    const/4 v0, 0x0

    :goto_e
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_20

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    :cond_20
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_39
    return v1
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 11

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_a

    const-class p3, Ljava/lang/Object;

    :cond_a
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_36

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    if-le v4, p1, :cond_26

    if-ge v4, p2, :cond_26

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    move p2, v4

    :cond_26
    if-le v5, p1, :cond_33

    if-ge v5, p2, :cond_33

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move p2, v5

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_36
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .registers 13

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_8
    if-ltz v3, :cond_3f

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_3c

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    add-int/lit8 v6, v3, 0x1

    sub-int v6, v0, v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    and-int/lit16 v7, p2, 0x200

    if-nez v7, :cond_3b

    invoke-direct {p0, p1, v4, v5}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    :cond_3b
    return-void

    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_3f
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
