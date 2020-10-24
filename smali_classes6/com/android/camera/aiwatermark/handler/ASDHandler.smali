.class public abstract Lcom/android/camera/aiwatermark/handler/ASDHandler;
.super Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ASDHandler"


# instance fields
.field private mASDListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

.field protected mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;

.field private mSpots:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;-><init>(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mSpots:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mASDListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/camera/aiwatermark/data/ASDWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/ASDWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/aiwatermark/handler/ASDHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mSpots:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/aiwatermark/handler/ASDHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mSpots:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/aiwatermark/handler/ASDHandler;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void
.end method

.method private createASDListner()Lcom/android/camera/aiwatermark/lisenter/IASDListener;
    .locals 1

    new-instance v0, Lcom/android/camera/aiwatermark/handler/ASDHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler$1;-><init>(Lcom/android/camera/aiwatermark/handler/ASDHandler;)V

    return-object v0
.end method

.method private registerASDListener(Lcom/android/camera/aiwatermark/lisenter/IASDListener;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfe

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;->setListener(Lcom/android/camera/aiwatermark/lisenter/IASDListener;)V

    :cond_0
    return-void
.end method

.method private updateWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 4

    sget-object v0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASDHandler findWatermark mASDListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mASDListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setIWatermarkEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mASDListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->createASDListner()Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mASDListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    invoke-direct {p0, v0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->registerASDListener(Lcom/android/camera/aiwatermark/lisenter/IASDListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->getASDWatermarkList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mList:Ljava/util/ArrayList;

    :cond_1
    sget-object v0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findWatermark mList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mSpots:I

    invoke-static {v0}, Lcom/android/camera/aiwatermark/algo/ASDEngine;->spots2ASDKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/aiwatermark/handler/ASDHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    sget-object p0, Lcom/android/camera/aiwatermark/handler/ASDHandler;->TAG:Ljava/lang/String;

    const-string v0, "ASD watermark null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getASDWatermarkList()Ljava/util/ArrayList;
.end method
