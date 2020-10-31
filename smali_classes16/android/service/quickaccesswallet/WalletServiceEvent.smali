.class public final Landroid/service/quickaccesswallet/WalletServiceEvent;
.super Ljava/lang/Object;
.source "WalletServiceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/WalletServiceEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_NFC_PAYMENT_STARTED:I = 0x1

.field public static final TYPE_WALLET_CARDS_UPDATED:I = 0x2


# instance fields
.field private final mEventType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/WalletServiceEvent$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletServiceEvent$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletServiceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/quickaccesswallet/WalletServiceEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
