.class public Lmiui/upnp/typedef/property/PropertyList;
.super Ljava/lang/Object;
.source "PropertyList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/upnp/typedef/property/PropertyList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/upnp/typedef/property/PropertyList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public cleanState()V
    .registers 4

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyValue;->cleanState()V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getChangedPropertyList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v0, :cond_25

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    :cond_25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    goto :goto_7

    :cond_29
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object v0, v2

    :cond_22
    goto :goto_7

    :cond_23
    return-object v0
.end method

.method public getProperty(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/Property;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v0, v2

    goto :goto_20

    :cond_1f
    goto :goto_7

    :cond_20
    :goto_20
    return-object v0
.end method

.method public getPropertyDataValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_23

    :cond_22
    goto :goto_7

    :cond_23
    :goto_23
    return-object v0
.end method

.method public getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v0

    goto :goto_27

    :cond_26
    goto :goto_7

    :cond_27
    :goto_27
    return-object v0
.end method

.method public getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    goto :goto_23

    :cond_22
    goto :goto_7

    :cond_23
    :goto_23
    return-object v0
.end method

.method public initProperty(Lmiui/upnp/typedef/property/Property;)V
    .registers 3

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initProperty(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Lmiui/upnp/typedef/property/Property;

    invoke-direct {v0, p1, p2}, Lmiui/upnp/typedef/property/Property;-><init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isChanged()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    goto :goto_7

    :cond_20
    :goto_20
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public setPropertyDataValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    goto :goto_f

    :cond_4
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0, v1, p2}, Lmiui/upnp/typedef/property/PropertyList;->setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z

    move-result v0

    :goto_f
    return v0
.end method

.method public setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    goto :goto_29

    :cond_4
    invoke-virtual {p1, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "invalid value: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_29

    :cond_1d
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v0, 0x0

    goto :goto_29

    :cond_25
    const/4 v0, 0x1

    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/PropertyValue;->update(Ljava/lang/Object;)V

    :goto_29
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_f

    :cond_1f
    return-void
.end method
