.class Lmiui/util/ArraySet$1;
.super Lmiui/util/MapCollections;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/ArraySet;


# direct methods
.method constructor <init>(Lmiui/util/ArraySet;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {p0}, Lmiui/util/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget-object p0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected colGetSize()I
    .locals 0

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget p0, p0, Lmiui/util/ArraySet;->mSize:I

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    if-nez p1, :cond_0

    invoke-static {p0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    if-nez p1, :cond_0

    invoke-static {p0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
