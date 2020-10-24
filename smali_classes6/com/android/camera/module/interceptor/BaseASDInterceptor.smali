.class public abstract Lcom/android/camera/module/interceptor/BaseASDInterceptor;
.super Lcom/android/camera/module/interceptor/BaseModuleInterceptor;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract conditionDect()V
.end method

.method public getPriority()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScope()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method protected abstract getType()I
.end method

.method protected abstract onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;)V
.end method
