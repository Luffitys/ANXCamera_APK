.class public Lmiui/upnp/typedef/device/invocation/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/invocation/EventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private discoveryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Lmiui/upnp/typedef/field/FieldList;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/device/invocation/EventInfo$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/EventInfo$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/EventInfo;->initialize()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/EventInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoveryTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lmiui/upnp/typedef/device/urn/ServiceType;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v2

    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_4a

    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4a
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDiscoveryTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/DiscoveryType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/EventInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1d

    :cond_31
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/EventInfo;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_40

    :cond_50
    return-void
.end method
