.class public final Landroid/service/quickaccesswallet/GetWalletCardsRequest;
.super Ljava/lang/Object;
.source "GetWalletCardsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardHeightPx:I

.field private final mCardWidthPx:I

.field private final mIconSizePx:I

.field private final mMaxCards:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    iput p3, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    iput p4, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCardHeightPx()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    return v0
.end method

.method public getCardWidthPx()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    return v0
.end method

.method public getIconSizePx()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    return v0
.end method

.method public getMaxCards()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardWidthPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mCardHeightPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mIconSizePx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->mMaxCards:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
