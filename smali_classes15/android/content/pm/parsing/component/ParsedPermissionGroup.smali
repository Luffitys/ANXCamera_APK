.class public Landroid/content/pm/parsing/component/ParsedPermissionGroup;
.super Landroid/content/pm/parsing/component/ParsedComponent;
.source "ParsedPermissionGroup.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backgroundRequestDetailResourceId:I

.field backgroundRequestResourceId:I

.field priority:I

.field requestDetailResourceId:I

.field requestRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedPermissionGroup$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestDetailResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestDetailResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->priority:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundRequestDetailResourceId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestDetailResourceId:I

    return v0
.end method

.method public getBackgroundRequestResourceId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestResourceId:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->priority:I

    return v0
.end method

.method public getRequestDetailResourceId()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestDetailResourceId:I

    return v0
.end method

.method public getRequestRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestRes:I

    return v0
.end method

.method public setPriority(I)V
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->priority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

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

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestDetailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->backgroundRequestDetailResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
