.class public final synthetic Landroid/net/-$$Lambda$SocketKeepalive$1$yVvEaumPDc_celEzvlSEH2FU0nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/SocketKeepalive$1;

.field public final synthetic f$1:Landroid/net/SocketKeepalive$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/SocketKeepalive$1;Landroid/net/SocketKeepalive$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$yVvEaumPDc_celEzvlSEH2FU0nc;->f$0:Landroid/net/SocketKeepalive$1;

    iput-object p2, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$yVvEaumPDc_celEzvlSEH2FU0nc;->f$1:Landroid/net/SocketKeepalive$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$yVvEaumPDc_celEzvlSEH2FU0nc;->f$0:Landroid/net/SocketKeepalive$1;

    iget-object v1, p0, Landroid/net/-$$Lambda$SocketKeepalive$1$yVvEaumPDc_celEzvlSEH2FU0nc;->f$1:Landroid/net/SocketKeepalive$Callback;

    invoke-virtual {v0, v1}, Landroid/net/SocketKeepalive$1;->lambda$onDataReceived$6$SocketKeepalive$1(Landroid/net/SocketKeepalive$Callback;)V

    return-void
.end method
