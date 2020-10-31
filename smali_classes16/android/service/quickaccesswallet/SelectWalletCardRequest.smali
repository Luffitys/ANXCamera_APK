.class public final Landroid/service/quickaccesswallet/SelectWalletCardRequest;
.super Ljava/lang/Object;
.source "SelectWalletCardRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/SelectWalletCardRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/SelectWalletCardRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/SelectWalletCardRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->mCardId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCardId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
