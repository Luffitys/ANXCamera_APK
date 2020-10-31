.class public final Landroid/content/pm/parsing/component/ParsedIntentInfo;
.super Landroid/content/IntentFilter;
.source "ParsedIntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;,
        Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;,
        Landroid/content/pm/parsing/component/ParsedIntentInfo$Parceler;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCELER:Landroid/content/pm/parsing/component/ParsedIntentInfo$Parceler;


# instance fields
.field hasDefault:Z

.field icon:I

.field labelRes:I

.field nonLocalizedLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$Parceler;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo$Parceler;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->PARCELER:Landroid/content/pm/parsing/component/ParsedIntentInfo$Parceler;

    new-instance v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDefault:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    return v0
.end method

.method public getLabelRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->labelRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isHasDefault()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDefault:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderIntentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeIntentInfoToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedIntentInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
