.class public abstract Lcom/android/camera/resource/SimpleParseRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
.end method

.method protected scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/resource/SimpleParseRequest;->processParse(Lcom/android/camera/resource/BaseResourceCacheable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/camera/resource/BaseResourceCacheable;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleParseRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V

    return-void
.end method
