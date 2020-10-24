.class public abstract Lcom/android/camera/resource/BaseObservableRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/resource/ResponseListener;


# instance fields
.field protected mEmitter:Lio/reactivex/ObservableEmitter;

.field private mOutPutObservable:Lio/reactivex/Observable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic OooO00o(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic OooO0OO(Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {p0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic OooO0o0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseObservableRequest;->onDispose()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/resource/BaseObservableRequest;->OooO00o(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic OooO0Oo(Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/resource/BaseObservableRequest;->OooO0OO(Ljava/lang/Object;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;->OooO0o0()V

    return-void
.end method

.method public final create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "Cannot create an instance of "

    const-string v0, "newInstanceError"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onDispose()V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_1
    return-void
.end method

.method public onResponseError(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p3, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p3}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/camera/resource/BaseObservableRequest;->mEmitter:Lio/reactivex/ObservableEmitter;

    new-instance p3, Lcom/android/camera/resource/BaseRequestException;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/resource/BaseRequestException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p3}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponseProgress(JJ)V
    .locals 0

    return-void
.end method

.method protected abstract scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
.end method

.method public startObservable(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/camera/resource/OooO0OO;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/resource/OooO0OO;-><init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Class;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseObservableRequest;->mOutPutObservable:Lio/reactivex/Observable;

    return-object p1
.end method

.method public startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/camera/resource/OooO0O0;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/resource/OooO0O0;-><init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/resource/OooO00o;

    invoke-direct {v0, p0}, Lcom/android/camera/resource/OooO00o;-><init>(Lcom/android/camera/resource/BaseObservableRequest;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseObservableRequest;->mOutPutObservable:Lio/reactivex/Observable;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final writeToCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object p1, p2

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method
