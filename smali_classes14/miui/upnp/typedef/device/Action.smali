.class public Lmiui/upnp/typedef/device/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/device/Action$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Action$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Action;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArgument(Lmiui/upnp/typedef/device/Argument;)V
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getArguments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lmiui/upnp/typedef/device/Service;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->service:Lmiui/upnp/typedef/device/Service;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_26

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmiui/upnp/typedef/device/Argument;

    invoke-direct {v5, v2, v3, v4}, Lmiui/upnp/typedef/device/Argument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    return-void
.end method

.method public setService(Lmiui/upnp/typedef/device/Service;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/device/Action;->service:Lmiui/upnp/typedef/device/Service;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/Action;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/Argument;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getDirection()Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Argument$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_14

    :cond_3a
    return-void
.end method
