.class public final synthetic Landroid/net/-$$Lambda$EthernetManager$3$7jKVTVFMKx3pBO9-KkSYZmxOBm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$EthernetManager$3$7jKVTVFMKx3pBO9-KkSYZmxOBm0;->f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/-$$Lambda$EthernetManager$3$7jKVTVFMKx3pBO9-KkSYZmxOBm0;->f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    invoke-static {v0}, Landroid/net/EthernetManager$3;->lambda$onUnavailable$1(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V

    return-void
.end method
