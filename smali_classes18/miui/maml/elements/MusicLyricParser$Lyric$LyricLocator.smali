.class Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricLocator"
.end annotation


# instance fields
.field final CRLF_LENGTH:I

.field mFullLyric:Ljava/lang/String;

.field mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field mTimeArr:[I

.field final synthetic this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    return-void
.end method

.method private getLineNumber(J)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v1

    if-ge v0, v2, :cond_25

    aget v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_22

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_18

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-long v1, v1

    goto :goto_1d

    :cond_18
    const-wide v1, 0x7fffffffffffffffL

    :goto_1d
    cmp-long v1, p1, v1

    if-gez v1, :cond_22

    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    if-eqz p1, :cond_87

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_10

    goto/16 :goto_87

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_54

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v3, v4}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v2, v3, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    if-lez v0, :cond_39

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    goto :goto_3a

    :cond_39
    move-object v4, v1

    :goto_3a
    if-eqz v4, :cond_49

    iget v5, v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v6, v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v5, v6

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    iput v5, v3, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_54
    const-string v0, ""

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_59
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_86
    return-void

    :cond_87
    :goto_87
    iput-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    iput-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getAfterLines(J)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v0

    if-gez v0, :cond_f

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    return-object v1

    :cond_f
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_37
    return-object v1
.end method

.method getBeforeLines(J)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v0

    if-lez v0, :cond_21

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_21
    return-object v1
.end method

.method getLastLine(J)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v0

    if-lez v0, :cond_28

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_28
    return-object v1
.end method

.method getLine(J)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_27
    return-object v1
.end method

.method getNextLine(J)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v0

    const/4 v2, -0x1

    if-lt v0, v2, :cond_30

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_30

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_30
    return-object v1
.end method

.method set([ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    return-void
.end method
