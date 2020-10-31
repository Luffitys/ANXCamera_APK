.class public final Landroid/service/quickaccesswallet/WalletCard;
.super Ljava/lang/Object;
.source "WalletCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/WalletCard$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardIcon:Landroid/graphics/drawable/Icon;

.field private final mCardId:Ljava/lang/String;

.field private final mCardImage:Landroid/graphics/drawable/Icon;

.field private final mCardLabel:Ljava/lang/CharSequence;

.field private final mContentDescription:Ljava/lang/CharSequence;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/WalletCard$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletCard$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$000(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$100(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$200(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$300(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$400(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    # getter for: Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->access$500(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .registers 2

    invoke-static {p0}, Landroid/service/quickaccesswallet/WalletCard;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .registers 8

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x0

    goto :goto_28

    :cond_20
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    :goto_28
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Landroid/service/quickaccesswallet/WalletCard$Builder;

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/service/quickaccesswallet/WalletCard$Builder;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v4}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/quickaccesswallet/WalletCard$Builder;->build()Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCardIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardImage()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getCardLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_26

    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
