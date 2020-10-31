.class Landroid/service/autofill/AutofillService$1;
.super Landroid/service/autofill/IAutoFillService$Stub;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/AutofillService;


# direct methods
.method constructor <init>(Landroid/service/autofill/AutofillService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-direct {p0}, Landroid/service/autofill/IAutoFillService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    # getter for: Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/AutofillService;->access$000(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_b

    sget-object v1, Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;->INSTANCE:Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;

    goto :goto_d

    :cond_b
    sget-object v1, Landroid/service/autofill/-$$Lambda$eWz26esczusoIA84WEwFlxQuDGQ;->INSTANCE:Landroid/service/autofill/-$$Lambda$eWz26esczusoIA84WEwFlxQuDGQ;

    :goto_d
    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .registers 10

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    :try_start_4
    invoke-interface {p2, v0}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_c
    iget-object v1, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    # getter for: Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/service/autofill/AutofillService;->access$000(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;->INSTANCE:Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;

    iget-object v3, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    new-instance v5, Landroid/service/autofill/FillCallback;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v6

    invoke-direct {v5, p2, v6}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    # getter for: Landroid/service/autofill/AutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/AutofillService;->access$000(Landroid/service/autofill/AutofillService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;->INSTANCE:Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;

    iget-object v2, p0, Landroid/service/autofill/AutofillService$1;->this$0:Landroid/service/autofill/AutofillService;

    new-instance v3, Landroid/service/autofill/SaveCallback;

    invoke-direct {v3, p2}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
