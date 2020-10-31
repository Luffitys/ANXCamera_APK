.class public Lmiui/upnp/typedef/property/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private definition:Lmiui/upnp/typedef/property/PropertyDefinition;

.field private volatile value:Lmiui/upnp/typedef/property/PropertyValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/upnp/typedef/property/Property$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/Property$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/Property;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_7

    move-object v0, p2

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/upnp/typedef/property/Property;->init(Lmiui/upnp/typedef/property/PropertyDefinition;Lmiui/upnp/typedef/property/PropertyValue;)V

    return-void
.end method

.method private init(Lmiui/upnp/typedef/property/PropertyDefinition;Lmiui/upnp/typedef/property/PropertyValue;)V
    .registers 4

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->createObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object p2

    :cond_e
    iput-object p1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    iput-object p2, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    return-void
.end method

.method private isMultipleValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v1

    sget-object v2, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    if-ne v1, v2, :cond_1d

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method


# virtual methods
.method public cleanState()V
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->cleanState()V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentStringValue()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    return-object v0
.end method

.method public getOldStringValue()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyValue;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/datatype/DataType;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    return-object v0
.end method

.method public isChanged()Z
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    const-class v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    const-class v0, Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/PropertyValue;

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    return-void
.end method

.method public setDataValue(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-nez p1, :cond_d

    sget-object v1, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v2, "newValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_88

    :cond_d
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyDefinition;->getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v2

    sget-object v3, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_67

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_67

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-le v6, v5, :cond_67

    const/4 v1, 0x1

    sget-object v6, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multiple value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, v3

    move v7, v4

    :goto_43
    if-ge v7, v6, :cond_67

    aget-object v8, v3, v7

    iget-object v9, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v9, v8}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    sget-object v9, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v8, v10, v4

    const-string v11, "invalid value: %s, skip it!"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_5f
    iget-object v9, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v9, v8}, Lmiui/upnp/typedef/property/PropertyValue;->addMultipleValue(Ljava/lang/Object;)V

    :goto_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_67
    if-eqz v1, :cond_6a

    goto :goto_88

    :cond_6a
    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v2, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v4, "invalid value: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_88

    :cond_83
    iget-object v2, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {v2, p1}, Lmiui/upnp/typedef/property/PropertyValue;->update(Ljava/lang/Object;)V

    :goto_88
    return v0
.end method

.method public setDataValueByString(Ljava/lang/String;Z)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    goto :goto_54

    :cond_11
    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const-string v3, "value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_54

    :cond_1a
    invoke-virtual {p0, v1}, Lmiui/upnp/typedef/property/Property;->setDataValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    sget-object v2, Lmiui/upnp/typedef/property/Property;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v5}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v5}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/upnp/typedef/datatype/DataType;->getStringType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%s setDataValue failed: %s(%s), dataType is: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_53
    const/4 v0, 0x1

    :goto_54
    return v0
.end method

.method public setDefinition(Lmiui/upnp/typedef/property/PropertyDefinition;)V
    .registers 3

    iput-object p1, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->getDataType()Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->definition:Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/Property;->value:Lmiui/upnp/typedef/property/PropertyValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
