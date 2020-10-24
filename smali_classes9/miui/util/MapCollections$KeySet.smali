.class final Lmiui/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic this$0:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0, p1}, Lmiui/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v3, v0, v1}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colGetSize()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lmiui/util/MapCollections$ArrayIterator;

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/util/MapCollections$ArrayIterator;-><init>(Lmiui/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0, p1}, Lmiui/util/MapCollections;->colRemoveAt(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {p0}, Lmiui/util/MapCollections;->colGetSize()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
