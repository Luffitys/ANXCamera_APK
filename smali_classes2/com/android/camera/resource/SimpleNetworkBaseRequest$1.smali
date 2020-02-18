.class Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;
.super Ljava/lang/Object;
.source "SimpleNetworkBaseRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/resource/SimpleNetworkBaseRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

.field final synthetic val$listener:Lcom/android/camera/resource/ResponseListener;


# direct methods
.method constructor <init>(Lcom/android/camera/resource/SimpleNetworkBaseRequest;Lcom/android/camera/resource/ResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

    iput-object p2, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "SimpleNetworkBaseRequest"

    const-string v0, "scheduleRequest onFailure"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->process(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    invoke-interface {v1, v0, p1}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/android/camera/resource/BaseRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseRequestException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
