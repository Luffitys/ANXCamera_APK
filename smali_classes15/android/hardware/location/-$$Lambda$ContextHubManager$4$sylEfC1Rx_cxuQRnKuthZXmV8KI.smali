.class public final synthetic Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/ContextHubManager$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/hardware/location/ContextHubMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/ContextHubManager$4;IILandroid/hardware/location/ContextHubMessage;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$0:Landroid/hardware/location/ContextHubManager$4;

    iput p2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$1:I

    iput p3, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$2:I

    iput-object p4, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$3:Landroid/hardware/location/ContextHubMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$0:Landroid/hardware/location/ContextHubManager$4;

    iget v1, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$1:I

    iget v2, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$2:I

    iget-object v3, p0, Landroid/hardware/location/-$$Lambda$ContextHubManager$4$sylEfC1Rx_cxuQRnKuthZXmV8KI;->f$3:Landroid/hardware/location/ContextHubMessage;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/location/ContextHubManager$4;->lambda$onMessageReceipt$0$ContextHubManager$4(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method
