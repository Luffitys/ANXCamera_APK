.class Landroid/net/InterfaceConfiguration$1;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/InterfaceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/InterfaceConfiguration;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;
    .registers 7

    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/InterfaceConfiguration;->access$002(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    # setter for: Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;
    invoke-static {v0, v1}, Landroid/net/InterfaceConfiguration;->access$102(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)Landroid/net/LinkAddress;

    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_32

    # getter for: Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/net/InterfaceConfiguration;->access$200(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/InterfaceConfiguration;
    .registers 3

    new-array v0, p1, [Landroid/net/InterfaceConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->newArray(I)[Landroid/net/InterfaceConfiguration;

    move-result-object p1

    return-object p1
.end method
