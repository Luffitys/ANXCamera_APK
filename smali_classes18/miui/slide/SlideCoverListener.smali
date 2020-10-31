.class public Lmiui/slide/SlideCoverListener;
.super Ljava/lang/Object;
.source "SlideCoverListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideCoverListener$H;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_MS:I = 0x12c

.field private static final MSG_DARK_SCREEN_EVENT:I = 0x64

.field private static final MSG_ON_SCREEN_EVENT:I = 0x65

.field private static final MSG_UPDATE_STATUS:I = 0x66

.field private static final SEND_BROADCAST:Z = false

.field public static final SLIDE_COVER_SENSOR_TYPE:I = 0x1fa263a

.field public static final SLIDE_EVENT_CLOSE:I = 0x1

.field public static final SLIDE_EVENT_OPEN:I = 0x0

.field public static final SLIDE_EVENT_SLIDING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SlideCoverListener"

.field private static final TIME_COST_MOST_EXPECTED:I = 0x32

.field private static final VIBRATION_TIME_THRESHOLD:J = 0x1f40L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEvent:I

.field private mLastEventTime:J

.field private mLastVibrateTime:J

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mQuickSlideEventCount:I

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

.field private mSlideEventCount:I

.field private mTotalHistoryCount:I

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/slide/SlideCoverListener;->mLastEventTime:J

    const/4 v0, -0x1

    iput v0, p0, Lmiui/slide/SlideCoverListener;->mLastEvent:I

    new-instance v0, Lmiui/slide/SlideCoverListener$1;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCoverListener$1;-><init>(Lmiui/slide/SlideCoverListener;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lmiui/slide/SlideCoverListener;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    const-wide/16 v1, 0x32

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mVibrationEffect:Landroid/os/VibrationEffect;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "slide_cover"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lmiui/slide/SlideCoverListener$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/slide/SlideCoverListener$H;-><init>(Lmiui/slide/SlideCoverListener;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/slide/SlideCoverEventManager;

    iget-object v2, p0, Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lmiui/slide/SlideCoverEventManager;-><init>(Lmiui/slide/SlideCoverListener;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/slide/SlideCoverListener;->mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

    iget-object v1, p0, Lmiui/slide/SlideCoverListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa263a

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lmiui/slide/SlideCoverListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideCoverListener;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverListener;->getFrameworkSlideEvent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmiui/slide/SlideCoverListener;)I
    .registers 2

    iget v0, p0, Lmiui/slide/SlideCoverListener;->mLastEvent:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/slide/SlideCoverListener;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverListener;->handleDispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$102(Lmiui/slide/SlideCoverListener;I)I
    .registers 2

    iput p1, p0, Lmiui/slide/SlideCoverListener;->mLastEvent:I

    return p1
.end method

.method static synthetic access$1100(Lmiui/slide/SlideCoverListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverListener;->updateSystemStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lmiui/slide/SlideCoverListener;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$308(Lmiui/slide/SlideCoverListener;)I
    .registers 3

    iget v0, p0, Lmiui/slide/SlideCoverListener;->mSlideEventCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/slide/SlideCoverListener;->mSlideEventCount:I

    return v0
.end method

.method static synthetic access$400(Lmiui/slide/SlideCoverListener;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/slide/SlideCoverListener;)J
    .registers 3

    iget-wide v0, p0, Lmiui/slide/SlideCoverListener;->mLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lmiui/slide/SlideCoverListener;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/slide/SlideCoverListener;->mLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$608(Lmiui/slide/SlideCoverListener;)I
    .registers 3

    iget v0, p0, Lmiui/slide/SlideCoverListener;->mQuickSlideEventCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/slide/SlideCoverListener;->mQuickSlideEventCount:I

    return v0
.end method

.method static synthetic access$700(Lmiui/slide/SlideCoverListener;)Landroid/os/Vibrator;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/slide/SlideCoverListener;)J
    .registers 3

    iget-wide v0, p0, Lmiui/slide/SlideCoverListener;->mLastVibrateTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiui/slide/SlideCoverListener;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/slide/SlideCoverListener;->mLastVibrateTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lmiui/slide/SlideCoverListener;)Landroid/os/VibrationEffect;
    .registers 2

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private createSlideSensorEvent(F)Landroid/hardware/SensorEvent;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Landroid/hardware/SensorEvent;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_24

    move-object v0, v3

    goto :goto_40

    :catch_24
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSlideSensorEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlideCoverListener"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_40
    if-eqz v0, :cond_46

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aput p1, v2, v1

    :cond_46
    return-object v0
.end method

.method private getFrameworkSlideEvent(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method private handleDispatchMessage(Landroid/os/Message;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/16 v9, 0x32

    cmp-long v11, v7, v9

    const-string v12, " took "

    const-string v13, "event "

    const-string v14, "SlideCoverListener"

    if-lez v11, :cond_3d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " ms before handle"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 v11, 0x0

    const/4 v15, -0x1

    const/4 v9, 0x0

    if-nez v2, :cond_4b

    iget-object v10, v0, Lmiui/slide/SlideCoverListener;->mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

    invoke-virtual {v10, v9}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverEvent(I)Z

    move-result v11

    const/16 v15, 0x2bc

    goto :goto_62

    :cond_4b
    const/4 v10, 0x1

    if-ne v2, v10, :cond_57

    iget-object v9, v0, Lmiui/slide/SlideCoverListener;->mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

    invoke-virtual {v9, v10}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverEvent(I)Z

    move-result v11

    const/16 v15, 0x2bd

    goto :goto_62

    :cond_57
    const/4 v9, 0x2

    if-ne v2, v9, :cond_62

    iget-object v10, v0, Lmiui/slide/SlideCoverListener;->mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

    invoke-virtual {v10, v9}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverEvent(I)Z

    move-result v11

    const/16 v15, 0x2be

    :cond_62
    :goto_62
    if-nez v11, :cond_72

    iget-object v9, v0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_71

    iget-object v9, v0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_71
    return-void

    :cond_72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    new-instance v29, Landroid/view/KeyEvent;

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v18, v29

    move-wide/from16 v19, v9

    move-wide/from16 v21, v9

    move/from16 v24, v15

    invoke-direct/range {v18 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    move-object/from16 v30, v29

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    move-wide/from16 v31, v5

    move-object/from16 v5, v30

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v23, 0x1

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v16, 0x32

    cmp-long v5, v5, v16

    if-lez v5, :cond_db

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v3

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms during handle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    iget-object v5, v0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_e8

    iget-object v5, v0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e8
    return-void
.end method

.method private updateSystemStatus(I)V
    .registers 6

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sc_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Lmiui/slide/SlideCoverListener;->mTotalHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/slide/SlideCoverListener;->mTotalHistoryCount:I

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lmiui/slide/SlideCoverListener;->mTotalHistoryCount:I

    const-string v3, "miui_slider_history_count"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "SlideCoverListener:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlideEventCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverListener;->mSlideEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQuickSlideEventCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverListener;->mQuickSlideEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTotalHistoryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverListener;->mTotalHistoryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setSlideCoverState(I)V
    .registers 4

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverListener;->createSlideSensorEvent(F)Landroid/hardware/SensorEvent;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lmiui/slide/SlideCoverListener;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_c
    return-void
.end method

.method public systemReady()V
    .registers 6

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_slider_history_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideCoverListener;->mTotalHistoryCount:I

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mSlideCoverEventManager:Lmiui/slide/SlideCoverEventManager;

    invoke-virtual {v0}, Lmiui/slide/SlideCoverEventManager;->systemReady()V

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SlideCover.mWakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideCoverListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lmiui/slide/SlideCoverListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/slide/SlideCoverListener;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/slide/SlideCoverListener;->mSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lmiui/slide/SlideCoverListener;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method
