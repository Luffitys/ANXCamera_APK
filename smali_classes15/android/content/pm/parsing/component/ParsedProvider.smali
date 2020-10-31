.class public Landroid/content/pm/parsing/component/ParsedProvider;
.super Landroid/content/pm/parsing/component/ParsedMainComponent;
.source "ParsedProvider.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field forceUriPermissions:Z

.field grantUriPermissions:Z

.field initOrder:I

.field multiProcess:Z

.field pathPermissions:[Landroid/content/pm/PathPermission;

.field private readPermission:Ljava/lang/String;

.field syncable:Z

.field uriPermissionPatterns:[Landroid/os/PatternMatcher;

.field private writePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedProvider$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedProvider$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedProvider;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    return v0
.end method

.method public getPathPermissions()[Landroid/content/pm/PathPermission;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public getReadPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getUriPermissionPatterns()[Landroid/os/PatternMatcher;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public getWritePermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUriPermissions()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    return v0
.end method

.method public isGrantUriPermissions()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    return v0
.end method

.method public isMultiProcess()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    return v0
.end method

.method public isSyncable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    return v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    return-void
.end method

.method public setReadPermission(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    return-void
.end method

.method public setSyncable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    return-void
.end method

.method public setWritePermission(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->syncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedProvider;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedProvider;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->multiProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProvider;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
