.class public Landroid/security/KeyChain$KeyChainConnection;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/security/IKeyChainService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyChain$KeyChainConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/KeyChain$KeyChainConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p3, p0, Landroid/security/KeyChain$KeyChainConnection;->mService:Landroid/security/IKeyChainService;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/KeyChain$KeyChainConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .registers 2

    iget-object v0, p0, Landroid/security/KeyChain$KeyChainConnection;->mService:Landroid/security/IKeyChainService;

    return-object v0
.end method
