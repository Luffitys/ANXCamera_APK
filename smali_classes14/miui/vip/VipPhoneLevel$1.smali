.class Lmiui/vip/VipPhoneLevel$1;
.super Ljava/lang/Object;
.source "VipPhoneLevel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPhoneLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/vip/VipPhoneLevel;",
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

    invoke-virtual {p0, p1}, Lmiui/vip/VipPhoneLevel$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipPhoneLevel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/vip/VipPhoneLevel;
    .registers 5

    new-instance v0, Lmiui/vip/VipPhoneLevel;

    invoke-direct {v0}, Lmiui/vip/VipPhoneLevel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/vip/VipPhoneLevel;->phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/vip/VipPhoneLevel;->mid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/vip/VipPhoneLevel;->midUpdateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lmiui/vip/VipPhoneLevel;->level:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/vip/VipPhoneLevel;->levelUpdateTime:J

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/vip/VipPhoneLevel$1;->newArray(I)[Lmiui/vip/VipPhoneLevel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/vip/VipPhoneLevel;
    .registers 3

    new-array v0, p1, [Lmiui/vip/VipPhoneLevel;

    return-object v0
.end method
