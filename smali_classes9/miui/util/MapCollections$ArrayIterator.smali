.class final Lmiui/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;I)V
    .locals 1

    iput-object p1, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    iput p2, p0, Lmiui/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {p1}, Lmiui/util/MapCollections;->colGetSize()I

    move-result p1

    iput p1, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget p0, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Lmiui/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v0, v1, v2}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iput-boolean v2, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    iget-object p0, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0, v0}, Lmiui/util/MapCollections;->colRemoveAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
