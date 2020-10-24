.class public Lcom/airbnb/lottie/OooOoOO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO00o:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/OooOoOO;->OooO00o:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/airbnb/lottie/OooOo0;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOo0;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method static synthetic OooO00o()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/OooOoOO;->OooO00o:Ljava/util/Map;

    return-object v0
.end method

.method private static OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0OO()Lcom/airbnb/lottie/model/OooO0oO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0O0(Ljava/lang/String;)Lcom/airbnb/lottie/OooOOOO;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Lcom/airbnb/lottie/OooooOO;

    new-instance p1, Lcom/airbnb/lottie/OooOoO;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/OooOoO;-><init>(Lcom/airbnb/lottie/OooOOOO;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/OooooOO;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/OooOoOO;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/airbnb/lottie/OooOoOO;->OooO00o:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/OooooOO;

    return-object p0

    :cond_2
    new-instance v0, Lcom/airbnb/lottie/OooooOO;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/OooooOO;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_3

    new-instance p1, Lcom/airbnb/lottie/OooOOOo;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooOOOo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooooOO;->OooO0o(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    new-instance p1, Lcom/airbnb/lottie/OooOOo0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/OooOOo0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/OooooOO;->OooO0o0(Lcom/airbnb/lottie/OoooOOo;)Lcom/airbnb/lottie/OooooOO;

    sget-object p1, Lcom/airbnb/lottie/OooOoOO;->OooO00o:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private static OooO0OO(Lcom/airbnb/lottie/OooOOOO;Ljava/lang/String;)Lcom/airbnb/lottie/OoooOOO;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/OooOOOO;->OooO()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/OoooOOO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/OoooOOO;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/airbnb/lottie/OooOOoo;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/lottie/OooOOoo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lcom/airbnb/lottie/OooOoOO;->OooOoO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/airbnb/lottie/OooOoOO;->OooOO0(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static OooO0oo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/OooOo0O;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOo0O;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOO0O(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method private static OooOO0O(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO0(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/OooO0O0;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOOO0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public static OooOO0o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/airbnb/lottie/OooOo;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOo;-><init>(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method private static OooOOO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;Z)Lcom/airbnb/lottie/Ooooo00;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p0}, Lcom/airbnb/lottie/o00Ooo/OooOo0;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooO0O0;)Lcom/airbnb/lottie/OooOOOO;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0OO()Lcom/airbnb/lottie/model/OooO0oO;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0Oo(Ljava/lang/String;Lcom/airbnb/lottie/OooOOOO;)V

    :cond_0
    new-instance p1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    :cond_3
    throw p1
.end method

.method public static OooOOO0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOOO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;Z)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOOO(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/airbnb/lottie/OooOo0o;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOo0o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOOo(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO0(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/OooO0O0;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOOO0(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOo(Landroid/content/Context;I)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOoo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOOoo(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOo0(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOOOo(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOoo(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/airbnb/lottie/OooOo00;

    invoke-direct {v1, v0, p0, p1}, Lcom/airbnb/lottie/OooOo00;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V

    invoke-static {p2, v1}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0, p1}, Lcom/airbnb/lottie/network/OooO0O0;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/airbnb/lottie/OooOoOO;->OooOO0(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static OooOo00(Landroid/content/Context;I)Lcom/airbnb/lottie/Ooooo00;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOoo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOo0(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0O(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooOo0o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/airbnb/lottie/OooOOo;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOOo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooOoO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/OooOoOO;->OooOoOO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooO0OO(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static OooOoO0(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/OooooOO;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/airbnb/lottie/OooOoO0;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/OooOoO0;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/OooOoOO;->OooO0O0(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/OooooOO;

    move-result-object p0

    return-object p0
.end method

.method private static OooOoOO(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/Ooooo00;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOO0(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/OooO0O0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/OooOoOO;->OooOOO(Lcom/airbnb/lottie/parser/moshi/OooO0O0;Ljava/lang/String;Z)Lcom/airbnb/lottie/Ooooo00;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/Ooooo00;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/airbnb/lottie/OooOOOO;

    goto :goto_1

    :cond_2
    const-string v1, ".png"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    new-instance p0, Lcom/airbnb/lottie/Ooooo00;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/airbnb/lottie/OooOoOO;->OooO0OO(Lcom/airbnb/lottie/OooOOOO;Ljava/lang/String;)Lcom/airbnb/lottie/OoooOOO;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OoooOOO;->OooO0o()I

    move-result v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/OoooOOO;->OooO0Oo()I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/airbnb/lottie/o00o0O/OooO0oo;->OooOOO0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/OoooOOO;->OooO0oO(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/airbnb/lottie/OooOOOO;->OooO()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/OoooOOO;

    invoke-virtual {v1}, Lcom/airbnb/lottie/OoooOOO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance p0, Lcom/airbnb/lottie/Ooooo00;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/OoooOOO;

    invoke-virtual {v0}, Lcom/airbnb/lottie/OoooOOO;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0OO()Lcom/airbnb/lottie/model/OooO0oO;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0Oo(Ljava/lang/String;Lcom/airbnb/lottie/OooOOOO;)V

    :cond_a
    new-instance p0, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p0, v3}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/Ooooo00;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/Ooooo00;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static OooOoo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/airbnb/lottie/OooOoOO;->OooOoo0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_night_"

    goto :goto_0

    :cond_0
    const-string p0, "_day_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OooOoo0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooOooO(I)V
    .locals 1

    invoke-static {}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0OO()Lcom/airbnb/lottie/model/OooO0oO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/OooO0oO;->OooO0o0(I)V

    return-void
.end method
