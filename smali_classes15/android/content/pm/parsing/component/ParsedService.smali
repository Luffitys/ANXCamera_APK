.class public Landroid/content/pm/parsing/component/ParsedService;
.super Landroid/content/pm/parsing/component/ParsedMainComponent;
.source "ParsedService.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field foregroundServiceType:I

.field private permission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedService$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedService$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundServiceType()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    return v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;
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
    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

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

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedService;->foregroundServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedService;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method
