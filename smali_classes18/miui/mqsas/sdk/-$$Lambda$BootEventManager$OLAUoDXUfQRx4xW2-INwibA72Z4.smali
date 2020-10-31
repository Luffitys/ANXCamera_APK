.class public final synthetic Lmiui/mqsas/sdk/-$$Lambda$BootEventManager$OLAUoDXUfQRx4xW2-INwibA72Z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiui/mqsas/sdk/event/BootEvent;


# direct methods
.method public synthetic constructor <init>(Lmiui/mqsas/sdk/event/BootEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/mqsas/sdk/-$$Lambda$BootEventManager$OLAUoDXUfQRx4xW2-INwibA72Z4;->f$0:Lmiui/mqsas/sdk/event/BootEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/-$$Lambda$BootEventManager$OLAUoDXUfQRx4xW2-INwibA72Z4;->f$0:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-static {v0}, Lmiui/mqsas/sdk/BootEventManager;->lambda$reportBootEvent$0(Lmiui/mqsas/sdk/event/BootEvent;)V

    return-void
.end method
