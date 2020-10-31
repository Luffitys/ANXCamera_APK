.class public Lmiui/upnp/typedef/property/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PropertyValue"


# instance fields
.field private volatile currentValue:Ljava/lang/Object;

.field private isChanged:Z

.field private isOldValueAvailable:Z

.field private volatile oldValue:Ljava/lang/Object;

.field private single:Z

.field private volatile valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/upnp/typedef/property/PropertyValue$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyValue$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyValue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/property/PropertyValue;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyValue;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    iput-object p0, v0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    iput-boolean v1, v0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    return-object v0
.end method


# virtual methods
.method public addMultipleValue(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    return-object v0

    :cond_7
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    return-object v0
.end method

.method public isChanged()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    return v0
.end method

.method public isMultiple()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOldValueAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    return v0
.end method

.method public isSingle()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_21

    move v1, v2

    :cond_21
    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_35

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_61

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    goto :goto_61

    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v0, :cond_61

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_61
    :goto_61
    return-void
.end method

.method public setMultiple(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    return-void
.end method

.method public setSingle(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 7

    const-string v0, "PropertyValue"

    if-nez p1, :cond_a

    const-string v1, "value is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "invalid: oldValue is %s, new value is %s (%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_4c
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-nez v0, :cond_55

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    goto :goto_68

    :cond_55
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_68

    :cond_5e
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    iput-boolean v1, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    :goto_68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->single:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->isOldValueAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    :cond_1d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->oldValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :goto_25
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    if-nez v0, :cond_2d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    :cond_2d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->currentValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_36
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_4e

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyValue;->valueList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4e
    :goto_4e
    return-void
.end method
