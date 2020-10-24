.class final Lmiui/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .locals 1

    iput-object p1, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    invoke-virtual {p1}, Lmiui/util/MapCollections;->colGetSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lmiui/util/MapCollections$MapIterator;->mEnd:I

    const/4 p1, -0x1

    iput p1, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget v3, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v2, v3, v1}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, p0, v2}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lmiui/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mEnd:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget v1, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int p0, v0, v2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    iget v0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    iput-boolean v1, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Lmiui/util/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/util/MapCollections$MapIterator;->mEnd:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    iget-object p0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0, v0}, Lmiui/util/MapCollections;->colRemoveAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lmiui/util/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/MapCollections$MapIterator;->this$0:Lmiui/util/MapCollections;

    iget p0, p0, Lmiui/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lmiui/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
