.class public final Landroid/telephony/CdmaEriInformation;
.super Ljava/lang/Object;
.source "CdmaEriInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CdmaEriInformation$EriIconMode;,
        Landroid/telephony/CdmaEriInformation$EriIconIndex;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CdmaEriInformation;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERI_FLASH:I = 0x2

.field public static final ERI_ICON_MODE_FLASH:I = 0x1

.field public static final ERI_ICON_MODE_NORMAL:I = 0x0

.field public static final ERI_OFF:I = 0x1

.field public static final ERI_ON:I


# instance fields
.field private mIconIndex:I

.field private mIconMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CdmaEriInformation$1;

    invoke-direct {v0}, Landroid/telephony/CdmaEriInformation$1;-><init>()V

    sput-object v0, Landroid/telephony/CdmaEriInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CdmaEriInformation;->mIconIndex:I

    iput p2, p0, Landroid/telephony/CdmaEriInformation;->mIconMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEriInformation;->mIconIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaEriInformation;->mIconMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CdmaEriInformation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CdmaEriInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEriIconIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/CdmaEriInformation;->mIconIndex:I

    return v0
.end method

.method public getEriIconMode()I
    .registers 2

    iget v0, p0, Landroid/telephony/CdmaEriInformation;->mIconMode:I

    return v0
.end method

.method public setEriIconIndex(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CdmaEriInformation;->mIconIndex:I

    return-void
.end method

.method public setEriIconMode(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CdmaEriInformation;->mIconMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CdmaEriInformation;->mIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CdmaEriInformation;->mIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
