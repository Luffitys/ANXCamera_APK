.class public Landroid/net/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CMD_CANCEL_REQUEST:I = 0x2

.field public static final CMD_REQUEST_NETWORK:I = 0x1

.field public static final FIRST_PROVIDER_ID:I = 0x1

.field public static final ID_NONE:I = -0x1

.field public static final ID_VPN:I = -0x2


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mName:Ljava/lang/String;

.field private mProviderId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkProvider;->mProviderId:I

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkProvider;->mCm:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkProvider$1;

    invoke-direct {v0, p0, p2}, Landroid/net/NetworkProvider$1;-><init>(Landroid/net/NetworkProvider;Landroid/os/Looper;)V

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/net/NetworkProvider;->mMessenger:Landroid/os/Messenger;

    iput-object p3, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/net/NetworkProvider;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkProvider;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkProvider;->mProviderId:I

    return v0
.end method

.method public onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public setProviderId(I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkProvider;->mProviderId:I

    return-void
.end method
