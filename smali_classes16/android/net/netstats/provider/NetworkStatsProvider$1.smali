.class Landroid/net/netstats/provider/NetworkStatsProvider$1;
.super Landroid/net/netstats/provider/INetworkStatsProvider$Stub;
.source "NetworkStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/provider/NetworkStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/netstats/provider/NetworkStatsProvider;


# direct methods
.method constructor <init>(Landroid/net/netstats/provider/NetworkStatsProvider;)V
    .registers 2

    iput-object p1, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-direct {p0}, Landroid/net/netstats/provider/INetworkStatsProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestStatsUpdate(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-virtual {v0, p1}, Landroid/net/netstats/provider/NetworkStatsProvider;->onRequestStatsUpdate(I)V

    return-void
.end method

.method public onSetAlert(J)V
    .registers 4

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-virtual {v0, p1, p2}, Landroid/net/netstats/provider/NetworkStatsProvider;->onSetAlert(J)V

    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider$1;->this$0:Landroid/net/netstats/provider/NetworkStatsProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/netstats/provider/NetworkStatsProvider;->onSetLimit(Ljava/lang/String;J)V

    return-void
.end method
