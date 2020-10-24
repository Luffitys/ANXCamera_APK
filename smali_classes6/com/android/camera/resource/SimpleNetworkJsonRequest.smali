.class public abstract Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.super Lcom/android/camera/resource/SimpleNetworkBaseRequest;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract parseJson(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected process(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;->parseJson(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Lcom/android/camera/resource/BaseRequestException;

    const/4 p2, 0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/android/camera/resource/BaseRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
