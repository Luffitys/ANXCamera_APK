.class Landroid/net/EthernetManager$3;
.super Landroid/net/ITetheredInterfaceCallback$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;

.field final synthetic val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/EthernetManager$3;->this$0:Landroid/net/EthernetManager;

    iput-object p2, p0, Landroid/net/EthernetManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/EthernetManager$3;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    invoke-direct {p0}, Landroid/net/ITetheredInterfaceCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAvailable$0(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/net/EthernetManager$TetheredInterfaceCallback;->onAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onUnavailable$1(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V
    .registers 1

    invoke-interface {p0}, Landroid/net/EthernetManager$TetheredInterfaceCallback;->onUnavailable()V

    return-void
.end method


# virtual methods
.method public onAvailable(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/net/EthernetManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/EthernetManager$3;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;

    invoke-direct {v2, v1, p1}, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;-><init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUnavailable()V
    .registers 4

    iget-object v0, p0, Landroid/net/EthernetManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/EthernetManager$3;->val$callback:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    new-instance v2, Landroid/net/-$$Lambda$EthernetManager$3$7jKVTVFMKx3pBO9-KkSYZmxOBm0;

    invoke-direct {v2, v1}, Landroid/net/-$$Lambda$EthernetManager$3$7jKVTVFMKx3pBO9-KkSYZmxOBm0;-><init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
