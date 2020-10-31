.class Landroid/media/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Landroid/media/Cea608CCParser$CCLineBuilder;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroid/media/Cea608CCParser$CCMemory;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method private getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;
    .registers 5

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v1, v0, p1

    if-nez v1, :cond_f

    new-instance v1, Landroid/media/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    :cond_f
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private moveBaselineTo(II)V
    .registers 8

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    move v0, p2

    if-ge p1, v0, :cond_9

    move v0, p1

    :cond_9
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_f

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    :cond_f
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge p1, v1, :cond_25

    add-int/lit8 v1, v0, -0x1

    :goto_15
    if-ltz v1, :cond_36

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v1

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_36

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v1

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_36
    const/4 v1, 0x0

    :goto_37
    sub-int v2, p1, p2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_43

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_43
    add-int/lit8 v1, p1, 0x1

    :goto_45
    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v4, v2

    if-ge v1, v4, :cond_4f

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_4f
    return-void
.end method

.method private moveCursorByCol(I)V
    .registers 5

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v1

    iput v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/16 v1, 0x20

    invoke-static {p2, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorToRow(I)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    return-void
.end method


# virtual methods
.method bs()V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_26

    aget-object v0, v0, v1

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    :cond_26
    return-void
.end method

.method cr()V
    .registers 3

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method der()V
    .registers 6

    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_9
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_34

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    :goto_1d
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Cea608CCParser$CCLineBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v3, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_33
    return-void

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_37
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_3e
    return-void
.end method

.method erase()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/16 v0, 0xf

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_8
    if-gt v2, v1, :cond_1e

    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v4, v3, v2

    if-eqz v4, :cond_17

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    new-array v1, v1, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method rollUp(I)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int v2, v1, p1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_f

    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    sub-int/2addr v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    move v0, v1

    :goto_16
    iget v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v0, v4, :cond_25

    iget-object v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_25
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    :goto_27
    iget-object v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v5, v4

    if-ge v0, v5, :cond_31

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_31
    iput v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method tab(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V
    .registers 4

    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writePAC(Landroid/media/Cea608CCParser$PAC;)V
    .registers 4

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_1a

    :cond_12
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    :goto_1a
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroid/media/Cea608CCParser$PAC;)V

    return-void
.end method

.method writeText(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method
