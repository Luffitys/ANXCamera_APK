.class public Lcom/android/internal/location/ProviderRequest$Builder;
.super Ljava/lang/Object;
.source "ProviderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInterval:J

.field private mLocationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSettingsIgnored:Z

.field private mLowPowerMode:Z

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mInterval:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationRequests:Ljava/util/List;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/location/ProviderRequest;
    .registers 11

    iget-wide v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mInterval:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    return-object v0

    :cond_e
    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mInterval:J

    iget-boolean v5, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLowPowerMode:Z

    iget-boolean v6, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    iget-object v7, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationRequests:Ljava/util/List;

    iget-object v8, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/location/ProviderRequest;-><init>(ZJZZLjava/util/List;Landroid/os/WorkSource;Lcom/android/internal/location/ProviderRequest$1;)V

    return-object v0
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mInterval:J

    return-wide v0
.end method

.method public getLocationRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationRequests:Ljava/util/List;

    return-object v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public isLocationSettingsIgnored()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    return v0
.end method

.method public isLowPowerMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLowPowerMode:Z

    return v0
.end method

.method public setInterval(J)Lcom/android/internal/location/ProviderRequest$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mInterval:J

    return-object p0
.end method

.method public setLocationRequests(Ljava/util/List;)Lcom/android/internal/location/ProviderRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;)",
            "Lcom/android/internal/location/ProviderRequest$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationRequests:Ljava/util/List;

    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Lcom/android/internal/location/ProviderRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    return-object p0
.end method

.method public setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mLowPowerMode:Z

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)Lcom/android/internal/location/ProviderRequest$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method
