.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 6

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$iccid:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$nickname:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$slotId:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$iccid:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/euicc/EuiccService;->onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_e
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;->val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;->onComplete(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v1

    :goto_15
    return-void
.end method
