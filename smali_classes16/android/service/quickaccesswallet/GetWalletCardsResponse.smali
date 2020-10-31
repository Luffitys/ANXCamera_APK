.class public final Landroid/service/quickaccesswallet/GetWalletCardsResponse;
.super Ljava/lang/Object;
.source "GetWalletCardsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/GetWalletCardsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSelectedIndex:I

.field private final mWalletCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    iput p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .registers 2

    invoke-static {p0}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsResponse;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-class v2, Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-direct {v3, v1, v2}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;-><init>(Ljava/util/List;I)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedIndex()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    return v0
.end method

.method public getWalletCards()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mWalletCards:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->mSelectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
