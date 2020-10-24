.class public Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;


# instance fields
.field private mASDResult:I

.field private mListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mASDResult:I

    return-void
.end method

.method public static create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onASDChange(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mASDResult:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mASDResult:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/aiwatermark/lisenter/IASDListener;->onASDChange(I)V

    :cond_1
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfe

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetResult()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mASDResult:I

    return-void
.end method

.method public setListener(Lcom/android/camera/aiwatermark/lisenter/IASDListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->mListener:Lcom/android/camera/aiwatermark/lisenter/IASDListener;

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfe

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
