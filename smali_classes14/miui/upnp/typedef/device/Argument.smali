.class public Lmiui/upnp/typedef/device/Argument;
.super Ljava/lang/Object;
.source "Argument.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/typedef/device/Argument$Direction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/device/Argument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Lmiui/upnp/typedef/field/FieldList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/device/Argument$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/device/Argument$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/device/Argument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->setName(Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/device/Argument;->setDirection(Ljava/lang/String;)Z

    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/device/Argument;->setRelatedProperty(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/device/Argument$Direction;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-direct {p0}, Lmiui/upnp/typedef/device/Argument;->initialize()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/device/Argument;->setName(Ljava/lang/String;)Z

    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/device/Argument;->setDirection(Lmiui/upnp/typedef/device/Argument$Direction;)Z

    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/device/Argument;->setRelatedProperty(Ljava/lang/String;)Z

    return-void
.end method

.method private initialize()V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, v2}, Lmiui/upnp/typedef/field/FieldList;->initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()Lmiui/upnp/typedef/device/Argument$Direction;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmiui/upnp/typedef/device/Argument$Direction;->retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/Argument$Direction;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedProperty()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/field/FieldList;->getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const-class v0, Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldList;

    iput-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Direction:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDirection(Lmiui/upnp/typedef/device/Argument$Direction;)Z
    .registers 3

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Argument$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/upnp/typedef/device/Argument;->setDirection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->Name:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRelatedProperty(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    sget-object v1, Lmiui/upnp/typedef/device/ArgumentDefinition;->RelatedProperty:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0, v1, p1}, Lmiui/upnp/typedef/field/FieldList;->setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/device/Argument;->fields:Lmiui/upnp/typedef/field/FieldList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
