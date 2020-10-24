.class public Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source ""


# static fields
.field protected static final CLIENT:Lokhttp3/OkHttpClient;

.field protected static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private mProgressEmitter:Lio/reactivex/ObservableEmitter;

.field private mProgressObservable:Lio/reactivex/Observable;

.field private outputPath:Ljava/lang/String;

.field private responseCall:Lokhttp3/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->downloadUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    return-object p1
.end method


# virtual methods
.method public observableProgress(I)Lio/reactivex/Observable;
    .locals 3

    new-instance v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;

    invoke-direct {v0, p0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;-><init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lio/reactivex/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->mProgressObservable:Lio/reactivex/Observable;

    return-object p1
.end method

.method protected onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method protected scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    sget-object v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    new-instance v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$2;-><init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
