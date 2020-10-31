.class public final synthetic Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ulagkAZ2bM7-LW9T7PSTxSLQfBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/watchdog/ExplicitHealthCheckService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ulagkAZ2bM7-LW9T7PSTxSLQfBE;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    iput-object p2, p0, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ulagkAZ2bM7-LW9T7PSTxSLQfBE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ulagkAZ2bM7-LW9T7PSTxSLQfBE;->f$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    iget-object v1, p0, Landroid/service/watchdog/-$$Lambda$ExplicitHealthCheckService$ulagkAZ2bM7-LW9T7PSTxSLQfBE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService;->lambda$notifyHealthCheckPassed$0$ExplicitHealthCheckService(Ljava/lang/String;)V

    return-void
.end method
