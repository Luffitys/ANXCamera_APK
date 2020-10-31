.class public Lmiui/upnp/typedef/device/invocation/ActionInfo;
.super Ljava/lang/Object;
.source "ActionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/invocation/ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActionInfo"


# instance fields
.field private action:Lmiui/upnp/typedef/device/Action;

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

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    new-instance v0, Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->initialize()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    invoke-virtual {v2}, Lmiui/upnp/typedef/device/Action;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/upnp/typedef/device/Argument;

    invoke-virtual {v3}, Lmiui/upnp/typedef/device/Argument;->getDirection()Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v4

    if-eq v4, p2, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-virtual {v3}, Lmiui/upnp/typedef/device/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v1, v3

    goto :goto_2c

    :cond_2b
    goto :goto_c

    :cond_2c
    :goto_2c
    const-string v2, "ActionInfo"

    if-nez v1, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "argument not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_45
    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/upnp/typedef/property/Property;

    if-nez v0, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/Argument;->getRelatedProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    return-object v0
.end method

.method private initialize()V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lmiui/upnp/typedef/device/Action;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .registers 3

    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->IN:Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getArgument(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public getControlUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

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

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    return-object v0
.end method

.method public getHostPort()I
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .registers 3

    sget-object v0, Lmiui/upnp/typedef/device/Argument$Direction;->OUT:Lmiui/upnp/typedef/device/Argument$Direction;

    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lmiui/upnp/typedef/device/urn/ServiceType;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    const-class v0, Lmiui/upnp/typedef/device/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/Action;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->create(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_45

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/upnp/typedef/device/DiscoveryType;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v2

    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_4a
    if-ge v1, v0, :cond_68

    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    iget-object v3, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_68
    return-void
.end method

.method public setAction(Lmiui/upnp/typedef/device/Action;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArgumentValue(Ljava/lang/String;Ljava/lang/Object;Lmiui/upnp/typedef/device/Argument$Direction;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    if-nez v1, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relatedProperty not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_1e
    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/Property;->setDataValue(Ljava/lang/Object;)Z

    move-result v0

    :goto_22
    return v0
.end method

.method public setArgumentValueByString(Ljava/lang/String;Ljava/lang/String;ZLmiui/upnp/typedef/device/Argument$Direction;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->getRelatedProperty(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    if-nez v1, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relatedProperty not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_1e
    invoke-virtual {v1, p2, p3}, Lmiui/upnp/typedef/property/Property;->setDataValueByString(Ljava/lang/String;Z)Z

    move-result v0

    :goto_22
    return v0
.end method

.method public setControlUrl(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

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

    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    return-void
.end method

.method public setHostPort(I)Z
    .registers 5

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setServiceType(Lmiui/upnp/typedef/device/urn/ServiceType;)V
    .registers 2

    iput-object p1, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->action:Lmiui/upnp/typedef/device/Action;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->serviceType:Lmiui/upnp/typedef/device/urn/ServiceType;

    invoke-virtual {v0}, Lmiui/upnp/typedef/device/urn/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->discoveryTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    :cond_36
    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/invocation/ActionInfo;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_49

    :cond_59
    return-void
.end method
