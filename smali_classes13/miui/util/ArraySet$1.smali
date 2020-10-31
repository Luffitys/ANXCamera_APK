.class Lmiui/util/ArraySet$1;
.super Lmiui/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ArraySet;->getCollection()Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ArraySet;


# direct methods
.method constructor <init>(Lmiui/util/ArraySet;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0}, Lmiui/util/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget-object v0, v0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .registers 2

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget v0, v0, Lmiui/util/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    if-nez p1, :cond_9

    # invokes: Lmiui/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result v0

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # invokes: Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    :goto_11
    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    if-nez p1, :cond_9

    # invokes: Lmiui/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result v0

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # invokes: Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    :goto_11
    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0, p1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0, p1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
