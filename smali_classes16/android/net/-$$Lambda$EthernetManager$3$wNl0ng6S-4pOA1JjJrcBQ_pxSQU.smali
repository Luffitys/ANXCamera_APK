.class public final synthetic Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;->f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    iput-object p2, p0, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;->f$0:Landroid/net/EthernetManager$TetheredInterfaceCallback;

    iget-object v1, p0, Landroid/net/-$$Lambda$EthernetManager$3$wNl0ng6S-4pOA1JjJrcBQ_pxSQU;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/EthernetManager$3;->lambda$onAvailable$0(Landroid/net/EthernetManager$TetheredInterfaceCallback;Ljava/lang/String;)V

    return-void
.end method
