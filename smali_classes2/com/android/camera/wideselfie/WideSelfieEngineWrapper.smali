.class public Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
.super Ljava/lang/Object;
.source "WideSelfieEngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;,
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;,
        Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;
    }
.end annotation


# static fields
.field private static final AWS_STATE_CAPTURING:I = 0x2002

.field private static final AWS_STATE_PREVIEW:I = 0x2001

.field private static final AWS_STATE_STITCHING:I = 0x2003

.field public static final DIRECTION_MOVE_LEFT:I = 0x1

.field public static final DIRECTION_MOVE_RIGHT:I = 0x0

.field public static final DIRECTION_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WideSelfieEngine"


# instance fields
.field private mAngleSize:Landroid/util/SizeF;

.field private volatile mCanStopCapture:Z

.field private mContext:Landroid/content/Context;

.field private volatile mEngineInitialized:Z

.field private mFullImageHeight:I

.field private mFullImageWidth:I

.field private mHandle:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mPreviewHeight:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewWidth:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegisted:Z

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStitchResult:I

.field private mThumbBgWidth:I

.field private mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

.field private mWideSelfieCurrentCommand:I

.field private mWideSelfieOrientation:I

.field private nThumbnailHeight:I

.field private nThumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x2001

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    iput v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    iput-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;

    invoke-direct {v1, p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;

    invoke-direct {v1, v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MySensorEventListener;-><init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;)V

    iput-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensor:Landroid/hardware/Sensor;

    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;ILcom/arcsoft/camera/wideselfie/ProcessResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->handleProcessCallback(ILcom/arcsoft/camera/wideselfie/ProcessResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    return p1
.end method

.method private getAngleValue(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;
    .locals 8

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    aget p1, p1, v1

    mul-float/2addr p1, v3

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide p0

    mul-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    new-instance p1, Landroid/util/SizeF;

    invoke-direct {p1, v0, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleProcessCallback(ILcom/arcsoft/camera/wideselfie/ProcessResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onBurstCapture([B)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    const-string v1, "WideSelfieEngine"

    if-nez v0, :cond_0

    const-string p0, "onBurstCapture mEngineInitialized false"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x2002

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "onBurstCapture AWS_STATE_CAPTURING"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[B)I

    iget-boolean p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    if-nez p1, :cond_3

    iput-boolean v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x2003

    const/16 v2, 0x2001

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onBurstCapture STITCHING E"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [B

    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;->onWideSelfCompleted()V

    :cond_2
    iput v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[B)I

    move-result v0

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCapture mStitchResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mStitchResult:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCurrentCommand:I

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->process(I[B)I

    const-string p1, "onBurstCapture STITCHING X"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mHandle:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensor:Landroid/hardware/Sensor;

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mSensorRegisted:Z

    :cond_0
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;IIII)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    iput p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    iput p4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    iput p5, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    iget-object p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0701c1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewWidth:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewHeight:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mFullImageWidth = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mFullImageHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WideSelfieEngine"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    const-string p3, "camera"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->getAngleValue(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    return-void
.end method

.method public startCapture()I
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCapture orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfieEngine"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    const/16 v4, 0x802

    invoke-static {v0, v2, v4, v3}, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->getDefaultInitParams(IIII)Lcom/arcsoft/camera/wideselfie/AwsInitParameter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageHeight:I

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgWidth()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int/2addr v3, v7

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewWidth()I

    move-result v2

    div-int/2addr v3, v2

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    add-int/2addr v7, v2

    invoke-direct {v8, v5, v2, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mFullImageWidth:I

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgHeightVertical()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int/2addr v3, v7

    invoke-virtual {v2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewHeight()I

    move-result v2

    div-int/2addr v3, v2

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v7, v2

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    invoke-direct {v8, v2, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    :goto_0
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mThumbBgWidth:I

    iget v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    sub-int/2addr v2, v7

    div-int/2addr v2, v6

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    add-int/2addr v7, v2

    invoke-direct {v8, v5, v2, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mPreviewRect:Landroid/graphics/Rect;

    iput v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->maxResultWidth:I

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailWidth:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->nThumbnailHeight:I

    :goto_1
    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    const/16 v2, 0x1e0

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    const/16 v2, 0x168

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    iput v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForWidth:F

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mAngleSize:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    iput v2, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->cameraViewAngleForHeight:F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->progressBarThumbHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->thumbnailHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget v5, v0, Lcom/arcsoft/camera/wideselfie/AwsInitParameter;->guideStopBarThumbHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "startCapture maxResultWidth = %d, progressBarThumbHeight = %d, thumbnailWidth = %d, thumbnailHeight = %d,  guideStopBarThumbHeight = %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->init(Lcom/arcsoft/camera/wideselfie/AwsInitParameter;)I

    move-result v0

    iput-boolean v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mEngineInitialized:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WideSelfieEngine init, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->getSingleInstance()Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mWideSelfieCallback:Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;

    invoke-virtual {v1, v2}, Lcom/arcsoft/camera/wideselfie/WideSelfieEngine;->setOnCallback(Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;)V

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2002

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v0
.end method

.method public stopCapture()Z
    .locals 4

    const-string v0, "WideSelfieEngine"

    const-string v1, "stopCapture E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mCanStopCapture:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "stopCapture failed, can\'t stop"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2002

    const/16 v3, 0x2003

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "stopCapture failed, error state"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string p0, "stopCapture X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
