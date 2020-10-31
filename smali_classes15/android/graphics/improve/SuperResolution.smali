.class public Landroid/graphics/improve/SuperResolution;
.super Ljava/lang/Object;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/improve/SuperResolution$ImproveInfo;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;,
        Landroid/graphics/improve/SuperResolution$MainHandler;
    }
.end annotation


# static fields
.field public static final INTENT_INIT:Ljava/lang/String; = "miui.intent.action.super_resolution_turnon"

.field private static final MODEL_TYPE:I = 0x0

.field private static final MSG_IMPROVE:I = 0x3e6

.field private static final MSG_INIT:I = 0x3e7

.field private static final MSG_UPDATE_DRAWABLE:I = 0x1

.field public static final PKG_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final PKG_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field public static final TAG:Ljava/lang/String; = "SuperResolution"

.field private static volatile instance:Landroid/graphics/improve/SuperResolution; = null

.field private static final mLimitMaxHeight:I = 0x320

.field private static final mLimitMaxWidth:I = 0x320

.field private static final mLimitMinHeight:I = 0x64

.field private static final mLimitMinWidth:I = 0x64

.field private static final mLimitTime:I = 0xfa0


# instance fields
.field private mBitmapRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurPkg:Ljava/lang/String;

.field private mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

.field private mImproveHook:Landroid/graphics/improve/ImproveHookAble;

.field private mInitComplete:Z

.field private mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

.field private mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

.field private mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->checkViewIsAvailable(Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/improve/SuperResolution;J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->isTimeOutOfLimit(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1202(Landroid/graphics/improve/SuperResolution;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initInChildThread(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    return-object v0
.end method

.method static synthetic access$400(Landroid/graphics/improve/SuperResolution;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->initImproveInSRThread()V

    return-void
.end method

.method static synthetic access$500(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    return-object v0
.end method

.method static synthetic access$700(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/improve/SuperResolution;->checkTime(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method private add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consuming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkTime"

    invoke-static {v3, v2}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkViewIsAvailable(Landroid/widget/ImageView;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method private getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ", bitmap hashCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;
    .registers 5

    :try_start_0
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/graphics/improve/MMImproveHook;

    invoke-direct {v0, p1}, Landroid/graphics/improve/MMImproveHook;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_e
    const-string v0, "com.ss.android.article.news"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/graphics/improve/NewsImproveHook;

    invoke-direct {v0, p1}, Landroid/graphics/improve/NewsImproveHook;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    return-object v0

    :cond_1c
    goto :goto_26

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "hook error"

    invoke-static {p1, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/graphics/improve/SuperResolution;
    .registers 3

    sget-object v0, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v0, :cond_1a

    const-class v0, Landroid/graphics/improve/SuperResolution;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v1, :cond_15

    new-instance v1, Landroid/graphics/improve/SuperResolution;

    invoke-direct {v1}, Landroid/graphics/improve/SuperResolution;-><init>()V

    invoke-direct {v1, p0}, Landroid/graphics/improve/SuperResolution;->init(Landroid/content/Context;)V

    sput-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    sget-object v0, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    return-object v0
.end method

.method private getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;
    .registers 3

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/improve/SuperResolution$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    :cond_f
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    new-instance v0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;-><init>(Landroid/graphics/improve/SuperResolution;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->isAllowInitSync()Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->registerReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    return-void
.end method

.method private initAsync(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/graphics/improve/SuperResolution$1;

    invoke-direct {v0, p0, p1}, Landroid/graphics/improve/SuperResolution$1;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SuperResolution$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initImproveInSRThread()V
    .registers 4

    invoke-static {}, Landroid/graphics/improve/SRUtils;->isSupportSelfArithmetic()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/graphics/improve/SelfBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/SelfBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    goto :goto_15

    :cond_e
    new-instance v0, Landroid/graphics/improve/KingSoftBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/KingSoftBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    :goto_15
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/graphics/improve/BitmapImproveAble;->init(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    const-string v1, "init"

    if-eqz v0, :cond_50

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- init successful, Supplier: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_50
    const-string v0, "-- init error!!!"

    invoke-static {v1, v0}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const-string v1, "init error"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method private initInChildThread(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-class v0, Landroid/graphics/improve/SuperResolution;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    monitor-exit v0

    return-void

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/improve/SuperResolution;->getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    if-nez v1, :cond_21

    monitor-exit v0

    return-void

    :cond_21
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SuperResolution"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw v1
.end method

.method private isAllowInitAsync(Landroid/content/Context;)Z
    .registers 7

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "show_already"

    const-string v2, "SuperResolution"

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2

    :cond_1f
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/improve/SRUtils;->isCloundAccessSR(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/improve/SRUtils;->isLocalAccessSR(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    :cond_39
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->showToast(Landroid/content/Context;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4b
    return v3
.end method

.method private isAllowInitSync()Z
    .registers 4

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isInAppAccessList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-static {}, Landroid/graphics/improve/SRUtils;->isProductAccessSR()Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .registers 5

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x320

    if-gt v0, v2, :cond_17

    const/16 v3, 0x64

    if-lt v0, v3, :cond_17

    if-gt v1, v2, :cond_17

    if-ge v1, v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    return v2

    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap out of limit,current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SizeOutOfLimit"

    invoke-static {v3, v2}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private isTimeOutOfLimit(J)Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const-string v0, "isTimeOutOfLimit"

    const-string/jumbo v1, "process time out of limit,limit:4000"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.super_resolution_turnon"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showToast(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    new-instance v1, Landroid/graphics/improve/SuperResolution$2;

    invoke-direct {v1, p0, p1}, Landroid/graphics/improve/SuperResolution$2;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public improveBitmapIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .registers 9

    iget-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, p2, v3}, Landroid/graphics/improve/ImproveHookAble;->getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_54

    move-object v1, v2

    nop

    if-nez v1, :cond_21

    return-void

    :cond_21
    invoke-direct {p0, p3, v1}, Landroid/graphics/improve/SuperResolution;->isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-void

    :cond_28
    invoke-direct {p0, v1}, Landroid/graphics/improve/SuperResolution;->isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    :cond_2f
    new-instance v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-direct {v2}, Landroid/graphics/improve/SuperResolution$ImproveInfo;-><init>()V

    iput-object v1, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    iput-object p2, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->setImageView(Landroid/widget/ImageView;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    const/16 v4, 0x3e6

    invoke-virtual {v3, v4}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->removeMessages(I)V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :catchall_54
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "get bitmap error"

    invoke-static {p1, v3}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-interface {v0}, Landroid/graphics/improve/BitmapImproveAble;->release()V

    return-void
.end method
