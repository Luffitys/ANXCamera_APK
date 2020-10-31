.class public final Lcom/android/internal/os/RpmStats;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RpmStats$PowerStateSubsystem;,
        Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;,
        Lcom/android/internal/os/RpmStats$PowerStateElement;
    }
.end annotation


# instance fields
.field public mPlatformLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;",
            ">;"
        }
    .end annotation
.end field

.field public mSubsystemLowPowerStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/RpmStats$PowerStateSubsystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAndUpdatePlatformState(Ljava/lang/String;JI)Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;

    invoke-direct {v1}, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mPlatformLowPowerStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iput-wide p2, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mTimeMs:J

    iput p4, v0, Lcom/android/internal/os/RpmStats$PowerStatePlatformSleepState;->mCount:I

    return-object v0
.end method

.method public getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    if-nez v0, :cond_15

    new-instance v1, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    invoke-direct {v1}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/RpmStats;->mSubsystemLowPowerStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method
