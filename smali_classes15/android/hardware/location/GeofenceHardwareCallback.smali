.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .registers 3

    return-void
.end method

.method public onGeofencePause(II)V
    .registers 3

    return-void
.end method

.method public onGeofenceRemove(II)V
    .registers 3

    return-void
.end method

.method public onGeofenceResume(II)V
    .registers 3

    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .registers 7

    return-void
.end method
