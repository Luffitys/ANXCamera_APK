.class Lmiui/mqsas/sdk/event/LowMemEvent$1;
.super Ljava/lang/Object;
.source "LowMemEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/LowMemEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/mqsas/sdk/event/LowMemEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/LowMemEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/LowMemEvent;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/LowMemEvent;
    .registers 3

    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent;

    invoke-direct {v0, p1}, Lmiui/mqsas/sdk/event/LowMemEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/LowMemEvent$1;->newArray(I)[Lmiui/mqsas/sdk/event/LowMemEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/mqsas/sdk/event/LowMemEvent;
    .registers 3

    new-array v0, p1, [Lmiui/mqsas/sdk/event/LowMemEvent;

    return-object v0
.end method
