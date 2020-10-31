.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

.field final synthetic val$options:I

.field final synthetic val$slotIndex:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$slotIndex:I

    iput p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$options:I

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$slotIndex:I

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$options:I

    invoke-virtual {v0, v1, v2}, Landroid/service/euicc/EuiccService;->onEraseSubscriptions(II)I

    move-result v0

    :try_start_c
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;->val$callback:Landroid/service/euicc/IEraseSubscriptionsCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IEraseSubscriptionsCallback;->onComplete(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception v1

    :goto_13
    return-void
.end method
