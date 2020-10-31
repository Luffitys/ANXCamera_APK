.class Lmiui/payment/PaymentManager$PmsTask$3;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/payment/PaymentManager$PmsTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/payment/PaymentManager$PmsTask;


# direct methods
.method constructor <init>(Lmiui/payment/PaymentManager$PmsTask;)V
    .registers 2

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask$3;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask$3;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    # getter for: Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;
    invoke-static {v0}, Lmiui/payment/PaymentManager$PmsTask;->access$300(Lmiui/payment/PaymentManager$PmsTask;)Lmiui/payment/PaymentManager$PaymentManagerCallback;

    move-result-object v0

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask$3;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    invoke-interface {v0, v1}, Lmiui/payment/PaymentManager$PaymentManagerCallback;->run(Lmiui/payment/PaymentManager$PaymentManagerFuture;)V

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask$3;->this$1:Lmiui/payment/PaymentManager$PmsTask;

    const/4 v1, 0x0

    # setter for: Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;
    invoke-static {v0, v1}, Lmiui/payment/PaymentManager$PmsTask;->access$302(Lmiui/payment/PaymentManager$PmsTask;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-void
.end method
