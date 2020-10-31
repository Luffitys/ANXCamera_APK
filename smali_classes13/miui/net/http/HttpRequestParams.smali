.class public Lmiui/net/http/HttpRequestParams;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/http/HttpRequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mHasStream:Z

.field private mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    sput-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 9

    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;-><init>()V

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_6e

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_6d

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_54

    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    goto :goto_3a

    :cond_24
    instance-of v4, v3, Ljava/io/File;

    if-eqz v4, :cond_2f

    move-object v4, v3

    check-cast v4, Ljava/io/File;

    invoke-virtual {p0, v2, v4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;

    goto :goto_3a

    :cond_2f
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3d

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v2, v4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;

    nop

    :goto_3a
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_3d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6d
    return-void

    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Supplied argument must be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getParamsList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_35

    new-instance v4, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_35
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_5c

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Landroid/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5c
    :goto_5c
    goto :goto_f

    :cond_5d
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/io/File;)Lmiui/net/http/HttpRequestParams;
    .registers 11

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    :try_start_4
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 12

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    :try_start_4
    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 14

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    :cond_1c
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 15

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lmiui/net/http/HttpRequestParams$FileWrapper;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lmiui/net/http/HttpRequestParams$FileWrapper;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/HttpRequestParams;->mHasStream:Z

    :cond_1c
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/util/List;)Lmiui/net/http/HttpRequestParams;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p0
.end method

.method public add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/net/http/HttpRequestParams;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmiui/net/http/HttpRequestParams;->add(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;

    goto :goto_8

    :cond_24
    return-object p0
.end method

.method public getParamString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmiui/net/http/HttpRequestParams;->getParamsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :try_start_24
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_48
    goto :goto_d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 3

    iget-object v0, p0, Lmiui/net/http/HttpRequestParams;->mUrlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lmiui/net/http/HttpRequestParams;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lmiui/net/http/HttpRequestParams;->DEFAULT_ENCODING:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Lmiui/net/http/HttpRequestParams;->mEncoding:Ljava/lang/String;

    return-object p0
.end method
