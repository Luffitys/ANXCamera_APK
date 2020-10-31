.class public final synthetic Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/SocketKeepalive$1;

.field public final synthetic f$1:Landroid/net/SocketKeepalive$Callback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/SocketKeepalive$1;Landroid/net/SocketKeepalive$Callback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$0:Landroid/net/SocketKeepalive$1;

    iput-object p2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$1:Landroid/net/SocketKeepalive$Callback;

    iput p3, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$0:Landroid/net/SocketKeepalive$1;

    iget-object v1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$1:Landroid/net/SocketKeepalive$Callback;

    iget v2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$xxwNi85oVXVQ_ILhrZNWwo4ppA8;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/net/SocketKeepalive$1;->lambda$onError$4$SocketKeepalive$1(Landroid/net/SocketKeepalive$Callback;I)V

    return-void
.end method
