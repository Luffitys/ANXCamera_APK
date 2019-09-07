.class public Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.super Ljava/lang/Object;
.source "TENativeServiceBase.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field protected mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

.field protected mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

.field protected mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    return-void
.end method


# virtual methods
.method public getEncoderDataListener()Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    return-object p0
.end method

.method public getErrorListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public getInfoListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public getOpenGLListeners()Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-object p0
.end method

.method public nativeCallback_onCompressBuffer([BIIZ)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;->onCompressBuffer([BIIZ)I

    :cond_0
    return-void
.end method

.method public nativeCallback_onErrorListener(IIFLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public nativeCallback_onImageData([BIII)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;->onImageData([BIII)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nativeCallback_onInfoListener(IIF)V
    .locals 1

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public nativeCallback_onOpenGLCreate(I)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLCreate(I)I

    :cond_0
    return-void
.end method

.method public nativeCallback_onOpenGLDestroy(I)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDestroy(I)I

    :cond_0
    return-void
.end method

.method public nativeCallback_onOpenGLDrawAfter(ID)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawAfter(ID)I

    :cond_0
    return-void
.end method

.method public nativeCallback_onOpenGLDrawBefore(ID)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawBefore(ID)I

    :cond_0
    return-void
.end method

.method public nativeCallback_onPreviewSurface(I)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onPreviewSurface(I)I

    :cond_0
    return-void
.end method

.method public setEncoderDataListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    return-void
.end method

.method public setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setGetImageCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    return-void
.end method

.method public setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-void
.end method
