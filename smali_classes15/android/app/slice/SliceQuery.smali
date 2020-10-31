.class public Landroid/app/slice/SliceQuery;
.super Ljava/lang/Object;
.source "SliceQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceQuery"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const-string v1, "*/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_28

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\*"

    const-string v3, ".*"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .registers 4

    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    :cond_5
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;

    invoke-direct {v1, p1}, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;-><init>(Landroid/app/slice/SliceItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 9

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/slice/SliceItem;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string/jumbo v3, "slice"

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4, v2}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v1

    return-object v1
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 6

    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    return-object v0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/slice/-$$Lambda$SliceQuery$hLToAajdaMbaf8BUtZ8fpGK980E;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/slice/-$$Lambda$SliceQuery$hLToAajdaMbaf8BUtZ8fpGK980E;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static findNotContaining(Landroid/app/slice/SliceItem;Ljava/util/List;)Landroid/app/slice/SliceItem;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;)",
            "Landroid/app/slice/SliceItem;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/slice/SliceItem;

    invoke-static {p0, v1}, Landroid/app/slice/SliceQuery;->contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object v0, v1

    :cond_17
    goto :goto_1

    :cond_18
    return-object v0
.end method

.method public static getPrimaryIcon(Landroid/app/slice/Slice;)Landroid/app/slice/SliceItem;
    .registers 5

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/slice/SliceItem;

    invoke-virtual {v1}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    :cond_21
    const-string/jumbo v2, "slice"

    invoke-static {v1, v2}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    :cond_32
    nop

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "list_item"

    invoke-virtual {v1, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "action"

    invoke-static {v1, v2}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-static {v1, v3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_52

    return-object v2

    :cond_52
    goto :goto_8

    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$contains$0(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$find$2(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .registers 5

    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method static synthetic lambda$findAll$1(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .registers 5

    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/app/slice/SliceQuery$1;

    invoke-direct {v1, v0}, Landroid/app/slice/SliceQuery$1;-><init>(Ljava/util/Queue;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    return-object v2
.end method
