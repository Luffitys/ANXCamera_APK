.class public final Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
.super Ljava/lang/Object;
.source "WalletServiceEventListenerRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListenerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .registers 2

    invoke-static {p0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-direct {v1, v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->mListenerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
