.class public Lmiui/upnp/typedef/field/FieldList;
.super Ljava/lang/Object;
.source "FieldList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/field/FieldList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/upnp/typedef/field/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/field/FieldList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/field/FieldList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/field/FieldList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/Field;

    return-object v0
.end method

.method private getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/field/Field;

    return-object v0
.end method

.method private getFieldDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/field/FieldDefinition;
    .registers 4

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Lmiui/upnp/typedef/field/FieldDefinition;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lmiui/upnp/typedef/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public initField(Lmiui/upnp/typedef/field/Field;)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initField(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V
    .registers 6

    new-instance v0, Lmiui/upnp/typedef/field/Field;

    invoke-direct {v0, p1, p2}, Lmiui/upnp/typedef/field/Field;-><init>(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_23

    const-class v2, Lmiui/upnp/typedef/field/Field;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/field/Field;

    iget-object v3, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/upnp/typedef/field/Field;->getDefinition()Lmiui/upnp/typedef/field/FieldDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/upnp/typedef/field/FieldDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_23
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Ljava/lang/String;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0, p2}, Lmiui/upnp/typedef/field/Field;->setValue(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setValue(Lmiui/upnp/typedef/field/FieldDefinition;Ljava/lang/Object;)Z
    .registers 5

    invoke-direct {p0, p1}, Lmiui/upnp/typedef/field/FieldList;->getField(Lmiui/upnp/typedef/field/FieldDefinition;)Lmiui/upnp/typedef/field/Field;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0, p2}, Lmiui/upnp/typedef/field/Field;->setValue(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/field/FieldList;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/field/Field;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_13

    :cond_23
    return-void
.end method
