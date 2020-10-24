.class public abstract Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sDebugGPS:Ljava/lang/Boolean;


# instance fields
.field protected mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

.field private mIsConsume:Z

.field protected mModule:Lcom/android/camera/module/BaseModule;

.field private mNextHandler:Lcom/android/camera/aiwatermark/handler/AbstractHandler;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mModule:Lcom/android/camera/module/BaseModule;

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    iput-boolean p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mIsConsume:Z

    return-void
.end method

.method protected static debugGPS()Z
    .locals 2

    sget-object v0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->sDebugGPS:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "cam.app.use.debug.gps"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->sDebugGPS:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->sDebugGPS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private nextHandlerRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mNextHandler:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->handleRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
.end method

.method public handleRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mIsConsume:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->nextHandlerRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->nextHandlerRequest()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0
.end method

.method public setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mNextHandler:Lcom/android/camera/aiwatermark/handler/AbstractHandler;

    return-void
.end method
