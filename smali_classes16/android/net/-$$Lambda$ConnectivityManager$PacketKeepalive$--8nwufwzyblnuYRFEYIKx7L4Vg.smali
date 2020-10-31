.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$--8nwufwzyblnuYRFEYIKx7L4Vg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager$PacketKeepalive;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$--8nwufwzyblnuYRFEYIKx7L4Vg;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$--8nwufwzyblnuYRFEYIKx7L4Vg;->f$0:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->lambda$stop$0$ConnectivityManager$PacketKeepalive()V

    return-void
.end method
