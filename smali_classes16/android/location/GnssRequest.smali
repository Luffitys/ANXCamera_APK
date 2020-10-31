.class public final Landroid/location/GnssRequest;
.super Ljava/lang/Object;
.source "GnssRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFullTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssRequest$1;

    invoke-direct {v0}, Landroid/location/GnssRequest$1;-><init>()V

    sput-object v0, Landroid/location/GnssRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    return-void
.end method

.method synthetic constructor <init>(ZLandroid/location/GnssRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssRequest;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Landroid/location/GnssRequest;

    if-nez v2, :cond_d

    return v1

    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/location/GnssRequest;

    iget-boolean v3, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    iget-boolean v4, v2, Landroid/location/GnssRequest;->mFullTracking:Z

    if-eq v3, v4, :cond_17

    return v1

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    return v0
.end method

.method public isFullTracking()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssRequest["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FullTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/location/GnssRequest;->mFullTracking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
