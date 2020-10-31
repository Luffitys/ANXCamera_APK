.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-object p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-virtual {v2, v1}, Landroid/service/euicc/EuiccService;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;->val$callback:Landroid/service/euicc/IEuiccServiceDumpResultCallback;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/euicc/IEuiccServiceDumpResultCallback;->onComplete(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v0

    :goto_1c
    return-void
.end method
