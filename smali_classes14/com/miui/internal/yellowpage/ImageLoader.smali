.class public Lcom/miui/internal/yellowpage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;,
        Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;,
        Lcom/miui/internal/yellowpage/ImageLoader$State;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOAD:I = 0x2

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static final UI_MODE_INIT:I = -0x1

.field private static sDisplayHeight:I

.field private static sDisplayWidth:I

.field private static sLoader:Lcom/miui/internal/yellowpage/ImageLoader;


# instance fields
.field private final BITMAP_CACHE_LOCK:Ljava/lang/Object;

.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUiMode:I

.field private final mDefaultBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNetworkAccess:I

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestingImageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$1;

    const/high16 v1, 0xa00000

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$1;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;I)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return-void
.end method

.method private bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_1c

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    :cond_1c
    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    :cond_22
    const-string v2, "ImageLoader"

    const-string v3, "cannot get image"

    invoke-static {v2, v3}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2d

    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    return-object v0

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    if-eq v2, v0, :cond_15

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    :cond_15
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_51

    if-eqz p3, :cond_29

    :try_start_21
    invoke-virtual {p2, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    goto :goto_45

    :catch_27
    move-exception v3

    goto :goto_41

    :cond_29
    if-eqz p4, :cond_45

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_3f} :catch_27

    move-object v2, v3

    goto :goto_45

    :goto_41
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_46

    :cond_45
    :goto_45
    nop

    :goto_46
    if-eqz v2, :cond_51

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-nez v1, :cond_15

    new-instance v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    move-object v1, v2

    goto :goto_1e

    :cond_15
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    move-object v1, v2

    :goto_1e
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    goto :goto_33

    :cond_2f
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 10

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    if-gt v0, p3, :cond_9

    if-le v1, p2, :cond_1d

    :cond_9
    int-to-float v3, v0

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ge v3, v4, :cond_1b

    move v5, v3

    goto :goto_1c

    :cond_1b
    move v5, v4

    :goto_1c
    move v2, v5

    :cond_1d
    return v2
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .registers 7

    if-eqz p1, :cond_2e

    array-length v0, p1

    if-lez v0, :cond_2e

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/internal/yellowpage/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length v1, p1

    invoke-static {p1, v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentUiMode(Landroid/content/Context;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v3, 0x30

    return v0
.end method

.method private static getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private getDisplayHeight()I
    .registers 2

    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_9
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    return v0
.end method

.method private getDisplayWidth()I
    .registers 2

    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_9
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;
    .registers 3

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_e

    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    :cond_e
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/miui/internal/yellowpage/ImageLoader;
    .registers 4

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_e

    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    :cond_e
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    iput p1, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V
    .registers 7

    const-string v0, "ImageLoader"

    if-eqz p3, :cond_19

    :try_start_4
    invoke-direct {p0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_16

    :cond_11
    const-string v2, "Can not decode bitmap bytes."

    invoke-static {v0, v2}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    goto :goto_1e

    :catch_17
    move-exception v0

    goto :goto_1f

    :cond_19
    const-string v1, "The holder\'s bytes should not be null"

    invoke-static {v0, v1}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_1e} :catch_17

    :goto_1e
    goto :goto_22

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_22
    return-void
.end method

.method private loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_1b

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1b
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .registers 8

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->isValid()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    goto :goto_5c

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImage: invalid image : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p2, :cond_41

    move-object v2, v1

    goto :goto_45

    :cond_41
    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageLoader"

    invoke-static {v2, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    :goto_5c
    return-void
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B
    .registers 22

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    return-object v3

    :cond_e
    const/4 v4, 0x0

    :try_start_f
    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "w"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_327

    move-object v4, v0

    nop

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_2b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_35} :catch_2ad
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_272
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_238
    .catchall {:try_start_2b .. :try_end_35} :catchall_234

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const/4 v9, -0x1

    const/16 v10, 0x1000

    const/4 v13, 0x0

    if-nez v0, :cond_194

    if-eqz p2, :cond_194

    :try_start_41
    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v14, v0

    const-string v0, "timeout"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "overwrite_network_access"

    iget v15, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    const-string v3, "r"

    invoke-virtual {v0, v15, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_126

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_81

    goto/16 :goto_126

    :cond_81
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    new-array v0, v10, [B

    const/4 v3, 0x0

    :goto_89
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v3, v10

    if-eq v10, v9, :cond_94

    invoke-virtual {v6, v0, v13, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_89

    :cond_94
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v10, v0

    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v0, v9

    invoke-static {v9, v13, v0, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v11, "image"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    array-length v0, v9

    if-lez v0, :cond_106

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_c9
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_c9} :catch_164
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_c9} :catch_272
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c9} :catch_238
    .catchall {:try_start_41 .. :try_end_c9} :catchall_234

    nop

    if-eqz v5, :cond_d6

    :try_start_cc
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d6

    :catch_d0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d6
    :goto_d6
    nop

    :try_start_d7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_e1

    :catch_db
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e1
    if-eqz v7, :cond_ed

    :try_start_e3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_ed

    :catch_e7
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ed
    :goto_ed
    if-eqz v8, :cond_f9

    :try_start_ef
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_f9

    :catch_f3
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f9
    :goto_f9
    if-eqz v4, :cond_105

    :try_start_fb
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff

    goto :goto_105

    :catch_ff
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_105
    :goto_105
    return-object v9

    :cond_106
    goto/16 :goto_1f7

    :cond_108
    :try_start_108
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid mime type ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_126
    .catch Ljava/io/FileNotFoundException; {:try_start_108 .. :try_end_126} :catch_164
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_126} :catch_272
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_126} :catch_238
    .catchall {:try_start_108 .. :try_end_126} :catchall_234

    :cond_126
    :goto_126
    nop

    if-eqz v5, :cond_133

    :try_start_129
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    goto :goto_133

    :catch_12d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_133
    :goto_133
    nop

    :try_start_134
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_13e

    :catch_138
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_13e
    if-eqz v7, :cond_14a

    :try_start_140
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144

    goto :goto_14a

    :catch_144
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_14a
    :goto_14a
    if-eqz v8, :cond_156

    :try_start_14c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_156

    :catch_150
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_156
    :goto_156
    if-eqz v4, :cond_162

    :try_start_158
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15c

    goto :goto_162

    :catch_15c
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_162
    :goto_162
    const/4 v3, 0x0

    return-object v3

    :catch_164
    move-exception v0

    :try_start_165
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v3, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "fileName"

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    iget-object v3, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    nop

    goto/16 :goto_1f7

    :cond_194
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v14

    cmp-long v0, v14, v11

    if-lez v0, :cond_1f7

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    new-array v0, v10, [B

    move-object v3, v0

    const/4 v0, 0x0

    :goto_1a5
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v11, v10

    if-eq v10, v9, :cond_1b1

    invoke-virtual {v6, v3, v13, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v11

    goto :goto_1a5

    :cond_1b1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1f7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_1bb
    .catch Ljava/io/FileNotFoundException; {:try_start_165 .. :try_end_1bb} :catch_2ad
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_1bb} :catch_272
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1bb} :catch_238
    .catchall {:try_start_165 .. :try_end_1bb} :catchall_234

    if-eqz v5, :cond_1c7

    :try_start_1bd
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    goto :goto_1c7

    :catch_1c1
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c7
    :goto_1c7
    nop

    :try_start_1c8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1cc

    goto :goto_1d2

    :catch_1cc
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d2
    if-eqz v7, :cond_1de

    :try_start_1d4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1d8

    goto :goto_1de

    :catch_1d8
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1de
    :goto_1de
    if-eqz v8, :cond_1ea

    :try_start_1e0
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_1e3} :catch_1e4

    goto :goto_1ea

    :catch_1e4
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ea
    :goto_1ea
    if-eqz v4, :cond_1f6

    :try_start_1ec
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_1f0

    goto :goto_1f6

    :catch_1f0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f6
    :goto_1f6
    return-object v9

    :cond_1f7
    :goto_1f7
    if-eqz v5, :cond_203

    :try_start_1f9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fc} :catch_1fd

    goto :goto_203

    :catch_1fd
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_203
    :goto_203
    nop

    :try_start_204
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_208

    goto :goto_20e

    :catch_208
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_20e
    if-eqz v7, :cond_21a

    :try_start_210
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_214

    goto :goto_21a

    :catch_214
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_21a
    :goto_21a
    if-eqz v8, :cond_226

    :try_start_21c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_220

    goto :goto_226

    :catch_220
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_226
    :goto_226
    if-eqz v4, :cond_2e8

    :try_start_228
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22b} :catch_22d

    :goto_22b
    goto/16 :goto_2e8

    :catch_22d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22b

    :catchall_234
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2ea

    :catch_238
    move-exception v0

    :try_start_239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_234

    if-eqz v5, :cond_248

    :try_start_23e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_241} :catch_242

    goto :goto_248

    :catch_242
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_248
    :goto_248
    if-eqz v6, :cond_254

    :try_start_24a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24d} :catch_24e

    goto :goto_254

    :catch_24e
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_254
    :goto_254
    if-eqz v7, :cond_260

    :try_start_256
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_25a

    goto :goto_260

    :catch_25a
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_260
    :goto_260
    if-eqz v8, :cond_26c

    :try_start_262
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_265} :catch_266

    goto :goto_26c

    :catch_266
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_26c
    :goto_26c
    if-eqz v4, :cond_2e8

    :try_start_26e
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_271} :catch_22d

    goto :goto_22b

    :catch_272
    move-exception v0

    :try_start_273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_276
    .catchall {:try_start_273 .. :try_end_276} :catchall_234

    if-eqz v5, :cond_282

    :try_start_278
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_27b} :catch_27c

    goto :goto_282

    :catch_27c
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_282
    :goto_282
    if-eqz v6, :cond_28e

    :try_start_284
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_284 .. :try_end_287} :catch_288

    goto :goto_28e

    :catch_288
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_28e
    :goto_28e
    if-eqz v7, :cond_29a

    :try_start_290
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_293} :catch_294

    goto :goto_29a

    :catch_294
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_29a
    :goto_29a
    if-eqz v8, :cond_2a6

    :try_start_29c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_29f
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_29f} :catch_2a0

    goto :goto_2a6

    :catch_2a0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2a6
    :goto_2a6
    if-eqz v4, :cond_2e8

    :try_start_2a8
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2ab
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2ab} :catch_22d

    goto/16 :goto_22b

    :catch_2ad
    move-exception v0

    :try_start_2ae
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2b1
    .catchall {:try_start_2ae .. :try_end_2b1} :catchall_234

    if-eqz v5, :cond_2bd

    :try_start_2b3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2b6} :catch_2b7

    goto :goto_2bd

    :catch_2b7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2bd
    :goto_2bd
    if-eqz v6, :cond_2c9

    :try_start_2bf
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c2
    .catch Ljava/io/IOException; {:try_start_2bf .. :try_end_2c2} :catch_2c3

    goto :goto_2c9

    :catch_2c3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c9
    :goto_2c9
    if-eqz v7, :cond_2d5

    :try_start_2cb
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2ce
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2ce} :catch_2cf

    goto :goto_2d5

    :catch_2cf
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2d5
    :goto_2d5
    if-eqz v8, :cond_2e1

    :try_start_2d7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2da
    .catch Ljava/io/IOException; {:try_start_2d7 .. :try_end_2da} :catch_2db

    goto :goto_2e1

    :catch_2db
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e1
    :goto_2e1
    if-eqz v4, :cond_2e8

    :try_start_2e3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2e6
    .catch Ljava/io/IOException; {:try_start_2e3 .. :try_end_2e6} :catch_22d

    goto/16 :goto_22b

    :cond_2e8
    :goto_2e8
    const/4 v3, 0x0

    return-object v3

    :goto_2ea
    if-eqz v5, :cond_2f6

    :try_start_2ec
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2ef
    .catch Ljava/io/IOException; {:try_start_2ec .. :try_end_2ef} :catch_2f0

    goto :goto_2f6

    :catch_2f0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f6
    :goto_2f6
    if-eqz v6, :cond_302

    :try_start_2f8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_2fb} :catch_2fc

    goto :goto_302

    :catch_2fc
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_302
    :goto_302
    if-eqz v7, :cond_30e

    :try_start_304
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_307} :catch_308

    goto :goto_30e

    :catch_308
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_30e
    :goto_30e
    if-eqz v8, :cond_31a

    :try_start_310
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_313
    .catch Ljava/io/IOException; {:try_start_310 .. :try_end_313} :catch_314

    goto :goto_31a

    :catch_314
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_31a
    :goto_31a
    if-eqz v4, :cond_326

    :try_start_31c
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_31f
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_31f} :catch_320

    goto :goto_326

    :catch_320
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_326
    :goto_326
    throw v3

    :catch_327
    move-exception v0

    const-string v3, "ImageLoader"

    const-string v5, "The yellowpage provider\'s image can not be written now"

    invoke-static {v3, v5, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method private onRequestLoad(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    :cond_14
    return-void
.end method

.method private onRequestLoaded(Landroid/os/Message;)V
    .registers 12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-nez v5, :cond_2d

    goto :goto_18

    :cond_2d
    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmiui/yellowpage/YellowPageImgLoader$Image;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v6, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v6, :cond_70

    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v8, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v7, v8, :cond_70

    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5, v7}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:ImageView with image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " bound"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    :cond_70
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was garbage collected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Landroid/os/Message;->what:I

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9e
    :goto_9e
    goto/16 :goto_18

    :cond_a0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_a5
    move-exception v2

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_c .. :try_end_a7} :catchall_a5

    throw v2
.end method

.method private removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_3b

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_27

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;

    invoke-direct {v3, p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_11

    :cond_9
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoad(Landroid/os/Message;)V

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoaded(Landroid/os/Message;)V

    nop

    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B
    .registers 8

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    goto :goto_2e

    :cond_11
    if-eqz p3, :cond_2e

    const-string v1, "ImageLoader"

    const-string v2, "failed to load image, return default res"

    invoke-static {v1, v2}, Lmiui/yellowpage/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public pauseLoading()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    return-void
.end method

.method public resumeLoading()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_31

    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_34
    :goto_34
    goto :goto_d

    :cond_35
    return-void
.end method
