.class public abstract Landroid/service/quickaccesswallet/QuickAccessWalletService;
.super Landroid/app/Service;
.source "QuickAccessWalletService.java"


# static fields
.field public static final ACTION_VIEW_WALLET:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET"

.field public static final ACTION_VIEW_WALLET_SETTINGS:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.quickaccesswallet.QuickAccessWalletService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet"

.field private static final TAG:Ljava/lang/String; = "QAWalletService"


# instance fields
.field private mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private mEventListenerId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method

.method static synthetic access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method static synthetic access$200(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5

    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V

    return-void
.end method

.method private registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-void
.end method

.method private sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    const-string v1, "QAWalletService"

    if-nez v0, :cond_c

    const-string v0, "No dismiss listener registered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_1c

    :catch_10
    move-exception v0

    const-string/jumbo v2, "onWalletServiceEvent error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    :goto_1c
    return-void
.end method

.method private unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    goto :goto_1b

    :cond_14
    const-string v0, "QAWalletService"

    const-string v1, "dismiss listener missing or replaced"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method


# virtual methods
.method public synthetic lambda$sendWalletServiceEvent$0$QuickAccessWalletService(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "QAWalletService"

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_d

    const-string v0, "Warning: binding on pre-R device"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Wrong action"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_20
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method

.method public abstract onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V
.end method

.method public abstract onWalletDismissed()V
.end method

.method public final sendWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$a0zGdWOVtWlyLPz-OW7fdSpVGxw;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$a0zGdWOVtWlyLPz-OW7fdSpVGxw;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
