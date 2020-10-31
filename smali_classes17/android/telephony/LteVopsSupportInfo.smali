.class public final Landroid/telephony/LteVopsSupportInfo;
.super Ljava/lang/Object;
.source "LteVopsSupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LteVopsSupportInfo$LteVopsStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LteVopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LTE_STATUS_NOT_AVAILABLE:I = 0x1

.field public static final LTE_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final LTE_STATUS_SUPPORTED:I = 0x2


# instance fields
.field private final mEmcBearerSupport:I

.field private final mVopsSupport:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/LteVopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/LteVopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/LteVopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    iput p2, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/LteVopsSupportInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/LteVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    instance-of v1, p1, Landroid/telephony/LteVopsSupportInfo;

    if-nez v1, :cond_8

    goto :goto_1d

    :cond_8
    const/4 v1, 0x1

    if-ne p0, p1, :cond_c

    return v1

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/LteVopsSupportInfo;

    iget v3, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    iget v4, v2, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    iget v4, v2, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    if-ne v3, v4, :cond_1c

    move v0, v1

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public getEmcBearerSupport()I
    .registers 2

    iget v0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    return v0
.end method

.method public getVopsSupport()I
    .registers 2

    iget v0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteVopsSupportInfo :  mVopsSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmcBearerSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/LteVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LteVopsSupportInfo;->mEmcBearerSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
