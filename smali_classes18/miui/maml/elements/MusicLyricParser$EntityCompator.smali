.class Lmiui/maml/elements/MusicLyricParser$EntityCompator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntityCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/maml/elements/MusicLyricParser$LyricEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    check-cast p2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$EntityCompator;->compare(Lmiui/maml/elements/MusicLyricParser$LyricEntity;Lmiui/maml/elements/MusicLyricParser$LyricEntity;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiui/maml/elements/MusicLyricParser$LyricEntity;Lmiui/maml/elements/MusicLyricParser$LyricEntity;)I
    .registers 5

    iget v0, p1, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget v1, p2, Lmiui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr v0, v1

    return v0
.end method
