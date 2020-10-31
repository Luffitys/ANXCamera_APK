.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;
.super Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;)V
    .registers 2

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;->this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {p0}, Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaStatusChanged(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;->this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$statusChangedCallback:Landroid/service/euicc/IOtaStatusChangedCallback;

    invoke-interface {v0, p1}, Landroid/service/euicc/IOtaStatusChangedCallback;->onOtaStatusChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method
