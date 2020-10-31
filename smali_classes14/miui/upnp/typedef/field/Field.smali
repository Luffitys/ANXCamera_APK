.class public Lmiui/upnp/typedef/field/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/field/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private definition:Lmiui/upnp/typedef/field/FieldDefinition;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/field/Field$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/Field$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/field/Field;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/field/Field;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/upnp/typedef/field/Field;->init(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    return-void
.end method

.method private init(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object p2

    :cond_a
    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    iput-object p2, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const-class v0, Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/FieldDefinition;

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    return-void
.end method

.method public setDefinition(Lmiui/upnp/typedef/field/FieldDefinition;)V
    .registers 3

    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Z
    .registers 3

    iput-object p1, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->definition:Lmiui/upnp/typedef/field/FieldDefinition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/upnp/typedef/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
