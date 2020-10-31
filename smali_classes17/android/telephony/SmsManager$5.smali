.class Landroid/telephony/SmsManager$5;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$data:[B

.field final synthetic val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic val$destinationAddress:Ljava/lang/String;

.field final synthetic val$destinationPort:S

.field final synthetic val$scAddress:Ljava/lang/String;

.field final synthetic val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8

    iput-object p1, p0, Landroid/telephony/SmsManager$5;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iput-short p4, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    iput-object p5, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iput-object p6, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p7, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    # invokes: Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V
    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->access$100(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public onSuccess(I)V
    .registers 12

    :try_start_0
    # invokes: Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    invoke-static {}, Landroid/telephony/SmsManager;->access$000()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iget-short v1, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    const v6, 0xffff

    and-int/2addr v6, v1

    iget-object v7, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iget-object v8, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_3e

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataMessage: Couldn\'t send SMS - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x1f

    # invokes: Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V
    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->access$100(Landroid/app/PendingIntent;I)V

    :goto_3e
    return-void
.end method
