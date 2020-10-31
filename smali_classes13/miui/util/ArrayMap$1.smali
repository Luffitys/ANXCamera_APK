.class Lmiui/util/ArrayMap$1;
.super Lmiui/util/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ArrayMap;


# direct methods
.method constructor <init>(Lmiui/util/ArrayMap;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {v0}, Lmiui/util/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    iget-object v0, v0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .registers 2

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    iget v0, v0, Lmiui/util/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_11
    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
