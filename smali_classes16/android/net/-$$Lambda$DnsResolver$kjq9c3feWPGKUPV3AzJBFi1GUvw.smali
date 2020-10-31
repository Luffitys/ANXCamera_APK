.class public final synthetic Landroid/net/-$$Lambda$DnsResolver$kjq9c3feWPGKUPV3AzJBFi1GUvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/DnsResolver$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/DnsResolver$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$DnsResolver$kjq9c3feWPGKUPV3AzJBFi1GUvw;->f$0:Landroid/net/DnsResolver$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/-$$Lambda$DnsResolver$kjq9c3feWPGKUPV3AzJBFi1GUvw;->f$0:Landroid/net/DnsResolver$Callback;

    invoke-static {v0}, Landroid/net/DnsResolver;->lambda$query$3(Landroid/net/DnsResolver$Callback;)V

    return-void
.end method
