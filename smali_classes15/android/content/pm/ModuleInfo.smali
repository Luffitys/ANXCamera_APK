.class public final Landroid/content/pm/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApexModuleName:Ljava/lang/String;

.field private mHidden:Z

.field private mName:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/ModuleInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ModuleInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ModuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ModuleInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-object v0, p1, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ModuleInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ModuleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/content/pm/ModuleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ModuleInfo;

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    iget-boolean v3, v0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    if-ne v2, v3, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    return v1
.end method

.method public getApexModuleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public isHidden()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return v0
.end method

.method public setApexModuleName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public setHidden(Z)Landroid/content/pm/ModuleInfo;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/content/pm/ModuleInfo;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/content/pm/ModuleInfo;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/ModuleInfo;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/ModuleInfo;->mApexModuleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
