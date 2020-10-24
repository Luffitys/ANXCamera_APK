.class public Lcom/android/camera/resource/DownloadInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private responseListener:Lcom/android/camera/resource/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/resource/ResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/resource/DownloadInterceptor;->responseListener:Lcom/android/camera/resource/ResponseListener;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/resource/ProgressResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/resource/DownloadInterceptor;->responseListener:Lcom/android/camera/resource/ResponseListener;

    invoke-direct {v1, p1, p0}, Lcom/android/camera/resource/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/android/camera/resource/ResponseListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
