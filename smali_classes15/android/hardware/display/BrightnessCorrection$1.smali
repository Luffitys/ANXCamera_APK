.class Landroid/hardware/display/BrightnessCorrection$1;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/BrightnessCorrection;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    invoke-static {p1}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->readFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/BrightnessCorrection;
    .registers 3

    new-array v0, p1, [Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection$1;->newArray(I)[Landroid/hardware/display/BrightnessCorrection;

    move-result-object p1

    return-object p1
.end method
