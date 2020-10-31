.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanManager$2;

.field public final synthetic f$1:Landroid/net/lowpan/ILowpanInterface;

.field public final synthetic f$2:Landroid/net/lowpan/LowpanManager$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$0:Landroid/net/lowpan/LowpanManager$2;

    iput-object p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$1:Landroid/net/lowpan/ILowpanInterface;

    iput-object p3, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$2:Landroid/net/lowpan/LowpanManager$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$0:Landroid/net/lowpan/LowpanManager$2;

    iget-object v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$1:Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/-$$Lambda$LowpanManager$2$jhNE3pUzRwHtqpTRJOtHQRfgQ70;->f$2:Landroid/net/lowpan/LowpanManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/net/lowpan/LowpanManager$2;->lambda$onInterfaceRemoved$1$LowpanManager$2(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void
.end method
