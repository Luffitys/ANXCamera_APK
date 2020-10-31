.class Landroid/hardware/hdmi/HdmiHotplugEvent$1;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiHotplugEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiHotplugEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    move v1, v2

    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v2, v0, v1}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;
    .registers 3

    new-array v0, p1, [Landroid/hardware/hdmi/HdmiHotplugEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object p1

    return-object p1
.end method
