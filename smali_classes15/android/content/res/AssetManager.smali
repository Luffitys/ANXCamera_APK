.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/view/ForceDarkHelper$AssetManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field private static final FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;

.field private static sSystemApkAssets:[Landroid/content/res/ApkAssets;

.field private static sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkAssets:[Landroid/content/res/ApkAssets;

.field private mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;

    move-result-object v0

    new-instance v1, Landroid/content/res/AssetManager$1;

    invoke-direct {v1}, Landroid/content/res/AssetManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->bindOriginal(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    const-string v1, "/system/framework/framework-res.apk"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_2d

    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    invoke-static {p0}, Landroid/miui/ResourcesManager;->addSystemAssets(Landroid/content/res/AssetManager;)V

    return-void

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-void
.end method

.method synthetic constructor <init>(ZLandroid/content/res/AssetManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method static synthetic access$1000(J)J
    .registers 4

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$102(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)[Landroid/content/res/ApkAssets;
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-object p1
.end method

.method static synthetic access$1100(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/res/AssetManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static synthetic access$300(J[Landroid/content/res/ApkAssets;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    return-void
.end method

.method static synthetic access$402(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)[Landroid/content/res/loader/ResourcesLoader;
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    return-object p1
.end method

.method static synthetic access$600(J)J
    .registers 4

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(J)I
    .registers 3

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(J[BII)I
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(JJI)J
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method private addAssetPathInternal(Ljava/lang/String;ZZ)I
    .registers 11

    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, v1, 0x1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_7a

    return v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_52

    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/resource-cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@idmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1

    goto :goto_5c

    :catch_50
    move-exception v2

    goto :goto_78

    :cond_52
    nop

    if-eqz p3, :cond_57

    const/4 v3, 0x2

    goto :goto_58

    :cond_57
    move v3, v1

    :goto_58
    invoke-static {p1, v3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_5c} :catch_50
    .catchall {:try_start_29 .. :try_end_5c} :catchall_7a

    :goto_5c
    nop

    :try_start_5d
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/ApkAssets;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aput-object v1, v3, v0

    iget-wide v4, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v4, v5, v3, v2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    add-int/lit8 v2, v0, 0x1

    monitor-exit p0

    return v2

    :goto_78
    monitor-exit p0

    return v1

    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_5d .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public static createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V
    .registers 12

    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/system/Os;->getegid()I

    move-result v0

    invoke-static {}, Landroid/system/Os;->geteuid()I

    move-result v1

    if-nez v0, :cond_13

    if-eqz v1, :cond_3a

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WTF--create system assets with illegal uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "AssetManager"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :try_start_3a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_52
    if-ge v7, v5, :cond_61

    aget-object v8, v4, v7

    invoke-static {v8, v3}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_61
    invoke-static {v2}, Landroid/content/res/AssetManagerInjector;->addMiuiAssets(Ljava/util/ArrayList;)V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v5, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/res/ApkAssets;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/ApkAssets;

    sput-object v5, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    sget-object v5, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v5, :cond_84

    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5, v3}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object v5, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    :cond_84
    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object v5, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    sget-object v3, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    invoke-static {v3}, Landroid/miui/ResourcesManager;->addSystemAssets(Landroid/content/res/AssetManager;)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_90} :catch_92

    nop

    return-void

    :catch_92
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to create system AssetManager"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private decRefsLocked(J)V
    .registers 8

    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_19

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    :cond_19
    return-void
.end method

.method private ensureOpenLocked()V
    .registers 3

    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidLocked()V
    .registers 5

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getAssetAllocations()Ljava/lang/String;
.end method

.method public static native getGlobalAssetCount()I
.end method

.method public static native getGlobalAssetManagerCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .registers 3

    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string v2, "/system/framework/framework-res.apk"

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private incRefsLocked(J)V
    .registers 4

    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    return-void
.end method

.method private invalidateCachesLocked(I)V
    .registers 2

    return-void
.end method

.method private static native nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native nativeAssetDestroy(J)V
.end method

.method private static native nativeAssetGetLength(J)J
.end method

.method private static native nativeAssetGetRemainingLength(J)J
.end method

.method private static native nativeAssetRead(J[BII)I
.end method

.method private static native nativeAssetReadChar(J)I
.end method

.method private static native nativeAssetSeek(JJI)J
.end method

.method private static native nativeAttributeResolutionStack(JJIII)[I
.end method

.method private static native nativeContainsAllocatedTable(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateIdmapsForStaticOverlaysTargetingAndroid()[Ljava/lang/String;
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetLastResourceResolution(J)Ljava/lang/String;
.end method

.method private static native nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;
.end method

.method private static native nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetResourceArray(JI[I)I
.end method

.method private static native nativeGetResourceArraySize(JI)I
.end method

.method private static native nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetResourceIntArray(JI)[I
.end method

.method private static native nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native nativeGetStyleAttributes(JI)[I
.end method

.method private static native nativeIsDarkModeSupported(J)Z
.end method

.method private static native nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native nativeOpenXmlAssetFd(JILjava/io/FileDescriptor;)J
.end method

.method private static native nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
.end method

.method private static native nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V
.end method

.method private static native nativeSetResourceResolutionLoggingEnabled(JZ)V
.end method

.method private static native nativeThemeApplyStyle(JJIZ)V
.end method

.method static native nativeThemeClear(J)V
.end method

.method private static native nativeThemeCopy(JJJJ)V
.end method

.method private static native nativeThemeCreate(J)J
.end method

.method private static native nativeThemeDestroy(J)V
.end method

.method private static native nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native nativeThemeGetChangingConfigurations(J)I
.end method


# virtual methods
.method public addAssetPath(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->getExtension()Lcom/miui/internal/variable/api/Overridable;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->getExtension()Lcom/miui/internal/variable/api/Overridable;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/variable/api/Overridable;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    invoke-interface {v0, p0, p1}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->originalAddAssetPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public addOverlayPath(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string v0, "inAttrs"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_c
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    if-eqz v2, :cond_16

    iget-wide v5, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_18

    :cond_16
    const-wide/16 v5, 0x0

    :goto_18
    move-wide v9, v5

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method applyStyleToTheme(JIZ)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public containsAllocatedTable()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeContainsAllocatedTable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method createTheme()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public findCookieForPath(Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, v1, 0x1

    monitor-exit p0

    return v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_25
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public getApkAssets()[Landroid/content/res/ApkAssets;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getApkPaths()[Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    monitor-exit p0

    return-object v0

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_24

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getAttributeResolutionStack(JIII)[I
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p5

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeAttributeResolutionStack(JJIII)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getLastResourceResolution()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetLastResourceResolution(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getLoaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getLocales()[Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getNonSystemLocales()[Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getOverlayablesToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .registers 5

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getResourceArray(I[I)I
    .registers 5

    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getResourceArraySize(I)I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceBagText(II)Ljava/lang/CharSequence;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result v1

    if-gtz v1, :cond_11

    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :cond_11
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_26
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceIntArray(I)[I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceName(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceStringArray(I)[Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceText(I)Ljava/lang/CharSequence;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method getResourceTextArray(I)[Ljava/lang/CharSequence;
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    monitor-exit p0

    return-object v1

    :cond_f
    array-length v2, v0

    div-int/lit8 v3, v2, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-ge v5, v2, :cond_2f

    aget v7, v0, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    if-ltz v8, :cond_27

    if-lez v7, :cond_27

    invoke-virtual {p0, v7, v8}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_28

    :cond_27
    move-object v9, v1

    :goto_28
    aput-object v9, v4, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_2f
    monitor-exit p0

    return-object v4

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v0
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getResourceValue(IILandroid/util/TypedValue;Z)Z
    .registers 12

    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result v0

    if-gtz v0, :cond_19

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_19
    iget v1, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    iput v1, p3, Landroid/util/TypedValue;->changingConfigurations:I

    iget v1, p3, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    iget v1, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :cond_2e
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v0
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getStyleAttributes(I)[I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method getThemeValue(JILandroid/util/TypedValue;Z)Z
    .registers 14

    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result v0

    if-gtz v0, :cond_19

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_19
    iget v1, p4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    iput v1, p4, Landroid/util/TypedValue;->changingConfigurations:I

    iget v1, p4, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    iget v1, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :cond_2e
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public isDarkModeSupported()Z
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeIsDarkModeSupported(J)Z

    move-result v0

    return v0
.end method

.method public isUpToDate()Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    monitor-exit p0

    return-object v2

    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    :cond_26
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    monitor-exit p0

    return-object v2

    :cond_25
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    :cond_26
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    monitor-exit p0

    return-object v2

    :cond_24
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    if-eqz v1, :cond_11

    nop

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    :cond_10
    return-object v1

    :cond_11
    :try_start_11
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "block.newParser() returned a null parser"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method originalAddAssetPath(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method releaseTheme(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->nativeThemeDestroy(J)V

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method resolveAttrs(JII[I[I[I[I)Z
    .registers 24

    move-object v1, p0

    const-string v0, "inAttrs"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "outValues"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "outIndices"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_19
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_32

    throw v0
.end method

.method retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .registers 13

    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "inAttrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_18
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .registers 9

    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    array-length v2, p1

    :goto_15
    if-ge v3, v2, :cond_29

    aget-object v4, p1, v3

    sget-object v5, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    add-int/lit8 v5, v0, 0x1

    aput-object v4, v1, v0

    move v0, v5

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_29
    array-length v2, v1

    if-eq v0, v2, :cond_33

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Landroid/content/res/ApkAssets;

    :cond_33
    monitor-enter p0

    :try_start_34
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v2, v3, v1, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    if-eqz p2, :cond_44

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v2

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V
    .registers 41

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    invoke-static/range {v2 .. v21}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V

    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method setLoaders(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newLoaders"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v3, v2

    if-ge v1, v3, :cond_22

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_37
    if-ltz v4, :cond_5f

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_48
    if-ltz v6, :cond_5c

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_59
    add-int/lit8 v6, v6, -0x1

    goto :goto_48

    :cond_5c
    add-int/lit8 v4, v4, -0x1

    goto :goto_37

    :cond_5f
    const/4 v1, 0x0

    new-array v3, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/loader/ResourcesLoader;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    return-void
.end method

.method public setResourceResolutionLoggingEnabled(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeSetResourceResolutionLoggingEnabled(JZ)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method setThemeTo(JLandroid/content/res/AssetManager;J)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    monitor-enter p3
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    :try_start_5
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v4, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJJJ)V

    monitor-exit p3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_17

    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v0
.end method

.method xmlBlockGone(I)V
    .registers 4

    monitor-enter p0

    int-to-long v0, p1

    :try_start_2
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7

    throw v0
.end method
