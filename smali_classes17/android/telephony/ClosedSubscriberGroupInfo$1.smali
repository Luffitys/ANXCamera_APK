.class Landroid/telephony/ClosedSubscriberGroupInfo$1;
.super Ljava/lang/Object;
.source "ClosedSubscriberGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ClosedSubscriberGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ClosedSubscriberGroupInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ClosedSubscriberGroupInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ClosedSubscriberGroupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 3

    new-array v0, p1, [Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/ClosedSubscriberGroupInfo$1;->newArray(I)[Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object p1

    return-object p1
.end method
