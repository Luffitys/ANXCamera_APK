.class public final synthetic Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/SocketKeepalive$1;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/net/SocketKeepalive$Callback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/SocketKeepalive$1;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$0:Landroid/net/SocketKeepalive$1;

    iput-object p2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$2:Landroid/net/SocketKeepalive$Callback;

    iput p4, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$0:Landroid/net/SocketKeepalive$1;

    iget-object v1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$2:Landroid/net/SocketKeepalive$Callback;

    iget v3, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$0jK7H49vYYFjBANIXTac00ocnSo;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/SocketKeepalive$1;->lambda$onError$5$SocketKeepalive$1(Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;I)V

    return-void
.end method
