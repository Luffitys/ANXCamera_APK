.class public final Landroid/timezone/TimeZoneFinder;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"


# static fields
.field private static sInstance:Landroid/timezone/TimeZoneFinder;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mDelegate:Llibcore/timezone/TimeZoneFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Llibcore/timezone/TimeZoneFinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Llibcore/timezone/TimeZoneFinder;

    iput-object v0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Llibcore/timezone/TimeZoneFinder;

    return-void
.end method

.method public static getInstance()Landroid/timezone/TimeZoneFinder;
    .registers 3

    sget-object v0, Landroid/timezone/TimeZoneFinder;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    if-nez v1, :cond_12

    new-instance v1, Landroid/timezone/TimeZoneFinder;

    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/timezone/TimeZoneFinder;-><init>(Llibcore/timezone/TimeZoneFinder;)V

    sput-object v1, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    sget-object v0, Landroid/timezone/TimeZoneFinder;->sInstance:Landroid/timezone/TimeZoneFinder;

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
.method public getIanaVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Llibcore/timezone/TimeZoneFinder;

    invoke-virtual {v0}, Llibcore/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;
    .registers 4

    iget-object v0, p0, Landroid/timezone/TimeZoneFinder;->mDelegate:Llibcore/timezone/TimeZoneFinder;

    invoke-virtual {v0, p1}, Llibcore/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    :cond_a
    new-instance v1, Landroid/timezone/CountryTimeZones;

    invoke-direct {v1, v0}, Landroid/timezone/CountryTimeZones;-><init>(Llibcore/timezone/CountryTimeZones;)V

    :goto_f
    return-object v1
.end method
