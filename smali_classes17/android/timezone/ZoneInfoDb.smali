.class public final Landroid/timezone/ZoneInfoDb;
.super Ljava/lang/Object;
.source "ZoneInfoDb.java"


# static fields
.field private static sInstance:Landroid/timezone/ZoneInfoDb;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mDelegate:Llibcore/timezone/ZoneInfoDb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/ZoneInfoDb;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Llibcore/timezone/ZoneInfoDb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llibcore/timezone/ZoneInfoDb;

    iput-object v0, p0, Landroid/timezone/ZoneInfoDb;->mDelegate:Llibcore/timezone/ZoneInfoDb;

    return-void
.end method

.method public static getInstance()Landroid/timezone/ZoneInfoDb;
    .registers 3

    sget-object v0, Landroid/timezone/ZoneInfoDb;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    if-nez v1, :cond_12

    new-instance v1, Landroid/timezone/ZoneInfoDb;

    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/ZoneInfoDb;-><init>(Llibcore/timezone/ZoneInfoDb;)V

    sput-object v1, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    sget-object v0, Landroid/timezone/ZoneInfoDb;->sInstance:Landroid/timezone/ZoneInfoDb;

    return-object v0

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/ZoneInfoDb;->mDelegate:Llibcore/timezone/ZoneInfoDb;

    invoke-virtual {v0}, Llibcore/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
