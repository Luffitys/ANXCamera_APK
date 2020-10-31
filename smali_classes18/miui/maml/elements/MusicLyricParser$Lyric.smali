.class public Lmiui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;,
        Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v0, p1, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput-object p2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    new-instance v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTimeFromLyricShot(ID)J
    .registers 11

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_23

    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int v4, p1, v2

    mul-int/lit16 v4, v4, 0x1f40

    add-int/2addr v3, v4

    int-to-long v3, v3

    const-wide v5, 0x40bf400000000000L    # 8000.0

    mul-double/2addr v5, p2

    double-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_49

    :cond_23
    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    int-to-double v3, v3

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v6, v6, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    double-to-long v3, v3

    :goto_49
    return-wide v3
.end method


# virtual methods
.method public addOffset(I)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return-void
.end method

.method public correctLyric(Lmiui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .registers 14

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v0

    if-ltz p2, :cond_42

    if-gt p2, v0, :cond_42

    iget v1, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ltz v1, :cond_42

    iget v1, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-le v1, v0, :cond_11

    goto :goto_42

    :cond_11
    iget v1, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    iget-wide v2, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    invoke-direct {p0, v1, v2, v3}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v1

    invoke-direct {p0, p2, p3, p4}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v3

    const/4 v5, 0x1

    iget v6, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-gt p2, v6, :cond_2c

    iget v6, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    if-ne p2, v6, :cond_2d

    iget-wide v6, p1, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    cmpl-double v6, p3, v6

    if-lez v6, :cond_2d

    :cond_2c
    const/4 v5, 0x0

    :cond_2d
    if-nez v5, :cond_34

    cmp-long v6, v1, v3

    if-lez v6, :cond_34

    return-void

    :cond_34
    if-eqz v5, :cond_3b

    cmp-long v6, v1, v3

    if-gez v6, :cond_3b

    return-void

    :cond_3b
    sub-long v6, v1, v3

    long-to-int v8, v6

    invoke-virtual {p0, v8}, Lmiui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    return-void

    :cond_42
    :goto_42
    return-void
.end method

.method public decorate()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v2}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_2f

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {v3}, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    return-void

    :cond_2f
    :goto_2f
    return-void
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLyricContent(I)Lmiui/maml/elements/MusicLyricParser$LyricEntity;
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_6

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_1a

    :cond_6
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    goto :goto_1a

    :cond_11
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    :goto_1a
    return-object v0
.end method

.method public getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;
    .registers 13

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v0, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v1, v0

    int-to-long v3, v1

    cmp-long v1, v3, p1

    const-wide/16 v3, 0x0

    if-lez v1, :cond_1d

    new-instance v1, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v1

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v2, v0

    int-to-long v5, v2

    cmp-long v5, v5, p1

    if-lez v5, :cond_58

    iget-object v3, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v3, v0

    const-wide/16 v4, 0x0

    if-le v2, v3, :cond_50

    int-to-long v6, v3

    sub-long v6, p1, v6

    long-to-double v6, v6

    sub-int v8, v2, v3

    int-to-double v8, v8

    div-double v4, v6, v8

    :cond_50
    new-instance v6, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    add-int/lit8 v7, v1, -0x1

    invoke-direct {v6, v7, v4, v5}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v6

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_5b
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget v1, v1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v1, v0

    int-to-long v1, v1

    sub-long v5, p1, v1

    const-wide/16 v7, 0x1f40

    cmp-long v5, v5, v7

    if-gez v5, :cond_8a

    sub-long v3, p1, v1

    long-to-double v3, v3

    const-wide v5, 0x40bf400000000000L    # 8000.0

    div-double/2addr v3, v5

    new-instance v5, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v5, v6, v3, v4}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v5

    :cond_8a
    new-instance v5, Lmiui/maml/elements/MusicLyricParser$LyricShot;

    iget-object v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6, v3, v4}, Lmiui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    return-object v5
.end method

.method public getNextLine(J)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    iget-object v3, v2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    return-object v0
.end method

.method public getTimeArr()[I
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v4, v1, 0x1

    iget v5, v3, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v6, v6, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    add-int/2addr v5, v6

    aput v5, v0, v1

    move v1, v4

    goto :goto_19

    :cond_32
    return-object v0
.end method

.method public isModified()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public recycleContent()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resetHeaderOffset()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lmiui/maml/elements/MusicLyricParser$LyricHeader;

    iget v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    iput v1, v0, Lmiui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    return-void
.end method

.method public set([ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
