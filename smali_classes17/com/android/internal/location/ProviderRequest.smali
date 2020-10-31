.class public final Lcom/android/internal/location/ProviderRequest;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ProviderRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/location/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;


# instance fields
.field public final interval:J

.field public final locationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final locationSettingsIgnored:Z

.field public final lowPowerMode:Z

.field public final reportLocation:Z

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v8, Lcom/android/internal/location/ProviderRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/location/ProviderRequest;-><init>(ZJZZLjava/util/List;Landroid/os/WorkSource;)V

    sput-object v8, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    new-instance v0, Lcom/android/internal/location/ProviderRequest$1;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZJZZLjava/util/List;Landroid/os/WorkSource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJZZ",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;",
            "Landroid/os/WorkSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-wide p2, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    iput-boolean p4, p0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean p5, p0, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p7

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    return-void
.end method

.method synthetic constructor <init>(ZJZZLjava/util/List;Landroid/os/WorkSource;Lcom/android/internal/location/ProviderRequest$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/location/ProviderRequest;-><init>(ZJZZLjava/util/List;Landroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_2b

    const-string v1, "interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    if-eqz v1, :cond_21

    const-string v1, ", lowPowerMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-boolean v1, p0, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-eqz v1, :cond_30

    const-string v1, ", locationSettingsIgnored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_2b
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    :goto_30
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
