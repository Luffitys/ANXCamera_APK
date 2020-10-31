.class Landroid/app/timezone/RulesManager$CallbackWrapper;
.super Landroid/app/timezone/ICallback$Stub;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/RulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroid/app/timezone/Callback;

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/app/timezone/RulesManager;


# direct methods
.method constructor <init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V
    .registers 5

    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->this$0:Landroid/app/timezone/RulesManager;

    invoke-direct {p0}, Landroid/app/timezone/ICallback$Stub;-><init>()V

    iput-object p3, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinished$0$RulesManager$CallbackWrapper(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    invoke-virtual {v0, p1}, Landroid/app/timezone/Callback;->onFinished(I)V

    return-void
.end method

.method public onFinished(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallback.onFinished(status), status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;

    invoke-direct {v1, p0, p1}, Landroid/app/timezone/-$$Lambda$RulesManager$CallbackWrapper$t7a48uTTxaRuSo3YBKxBIbPQznY;-><init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
