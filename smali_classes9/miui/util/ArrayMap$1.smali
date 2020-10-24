.class Lmiui/util/ArrayMap$1;
.super Lmiui/util/MapCollections;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/ArrayMap;


# direct methods
.method constructor <init>(Lmiui/util/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    iget-object p0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    return-object p0
.end method

.method protected colGetSize()I
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    iget p0, p0, Lmiui/util/ArrayMap;->mSize:I

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/ArrayMap$1;->this$0:Lmiui/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
