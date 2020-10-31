.class public Landroid/content/pm/parsing/component/ParsedPermission;
.super Landroid/content/pm/parsing/component/ParsedComponent;
.source "ParsedPermission.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backgroundPermission:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

.field protectionLevel:I

.field requestRes:I

.field tree:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedPermission$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedPermission$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedPermission;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/content/pm/parsing/component/ParsedComponent;)V

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedPermission;Landroid/content/pm/PermissionInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedPermission;-><init>(Landroid/content/pm/parsing/component/ParsedPermission;)V

    iget v0, p2, Landroid/content/pm/PermissionInfo;->flags:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    iget v0, p2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->descriptionRes:I

    iget-object v0, p2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    iget v0, p2, Landroid/content/pm/PermissionInfo;->requestRes:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    iget v0, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    invoke-virtual {p0, p4}, Landroid/content/pm/parsing/component/ParsedPermission;->setName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedComponent;

    invoke-virtual {p0, p3}, Landroid/content/pm/parsing/component/ParsedPermission;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/os/Parcel;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    return-void
.end method


# virtual methods
.method public calculateFootprint()I
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    return-object v0
.end method

.method public getProtection()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getProtectionFlags()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public getProtectionLevel()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    return v0
.end method

.method public getRequestRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    return v0
.end method

.method public isAppOp()Z
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRuntime()Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isTree()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    return v0
.end method

.method public setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->flags:I

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedPermission;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    return-object p0
.end method

.method public setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public setProtectionLevel(I)Landroid/content/pm/parsing/component/ParsedPermission;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/component/ParsedComponent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedPermission;->parsedPermissionGroup:Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
