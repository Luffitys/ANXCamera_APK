.class public final Landroid/timezone/TelephonyLookup;
.super Ljava/lang/Object;
.source "TelephonyLookup.java"


# static fields
.field private static sInstance:Landroid/timezone/TelephonyLookup;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mDelegate:Llibcore/timezone/TelephonyLookup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Llibcore/timezone/TelephonyLookup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llibcore/timezone/TelephonyLookup;

    iput-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Llibcore/timezone/TelephonyLookup;

    return-void
.end method

.method public static getInstance()Landroid/timezone/TelephonyLookup;
    .registers 3

    sget-object v0, Landroid/timezone/TelephonyLookup;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    if-nez v1, :cond_12

    new-instance v1, Landroid/timezone/TelephonyLookup;

    invoke-static {}, Llibcore/timezone/TelephonyLookup;->getInstance()Llibcore/timezone/TelephonyLookup;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TelephonyLookup;-><init>(Llibcore/timezone/TelephonyLookup;)V

    sput-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    :cond_12
    sget-object v1, Landroid/timezone/TelephonyLookup;->sInstance:Landroid/timezone/TelephonyLookup;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public getTelephonyNetworkFinder()Landroid/timezone/TelephonyNetworkFinder;
    .registers 3

    iget-object v0, p0, Landroid/timezone/TelephonyLookup;->mDelegate:Llibcore/timezone/TelephonyLookup;

    invoke-virtual {v0}, Llibcore/timezone/TelephonyLookup;->getTelephonyNetworkFinder()Llibcore/timezone/TelephonyNetworkFinder;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/timezone/TelephonyNetworkFinder;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetworkFinder;-><init>(Llibcore/timezone/TelephonyNetworkFinder;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method
