.class public Landroid/net/EthernetManager$TetheredInterfaceRequest;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TetheredInterfaceRequest"
.end annotation


# instance fields
.field private final mCb:Landroid/net/ITetheredInterfaceCallback;

.field private final mService:Landroid/net/IEthernetManager;


# direct methods
.method private constructor <init>(Landroid/net/IEthernetManager;Landroid/net/ITetheredInterfaceCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mService:Landroid/net/IEthernetManager;

    iput-object p2, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mCb:Landroid/net/ITetheredInterfaceCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IEthernetManager;Landroid/net/ITetheredInterfaceCallback;Landroid/net/EthernetManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/EthernetManager$TetheredInterfaceRequest;-><init>(Landroid/net/IEthernetManager;Landroid/net/ITetheredInterfaceCallback;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mService:Landroid/net/IEthernetManager;

    iget-object v1, p0, Landroid/net/EthernetManager$TetheredInterfaceRequest;->mCb:Landroid/net/ITetheredInterfaceCallback;

    invoke-interface {v0, v1}, Landroid/net/IEthernetManager;->releaseTetheredInterface(Landroid/net/ITetheredInterfaceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method
