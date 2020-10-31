.class Landroid/bluetooth/SdpOppOpsRecord$1;
.super Ljava/lang/Object;
.source "SdpOppOpsRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpOppOpsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpOppOpsRecord;
    .registers 3

    new-instance v0, Landroid/bluetooth/SdpOppOpsRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpOppOpsRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpOppOpsRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpOppOpsRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/SdpOppOpsRecord;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/SdpOppOpsRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpOppOpsRecord$1;->newArray(I)[Landroid/bluetooth/SdpOppOpsRecord;

    move-result-object p1

    return-object p1
.end method
