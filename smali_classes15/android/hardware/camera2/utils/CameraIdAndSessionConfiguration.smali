.class public Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
.super Ljava/lang/Object;
.source "CameraIdAndSessionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionConfiguration()Landroid/hardware/camera2/params/SessionConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/SessionConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
