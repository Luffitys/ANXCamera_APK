.class public abstract Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;->done()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_2
    move-exception v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;->done()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    if-nez v1, :cond_0

    new-instance v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_0
    :goto_1
    throw v0
.end method

.method protected abstract done()V
.end method

.method protected abstract run()Ljava/lang/Object;
.end method
