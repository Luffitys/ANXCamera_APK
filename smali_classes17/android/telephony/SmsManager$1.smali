.class Landroid/telephony/SmsManager$1;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$attributionTag:Ljava/lang/String;

.field final synthetic val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic val$destinationAddress:Ljava/lang/String;

.field final synthetic val$messageId:J

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$persistMessage:Z

.field final synthetic val$scAddress:Ljava/lang/String;

.field final synthetic val$sentIntent:Landroid/app/PendingIntent;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .registers 12

    iput-object p1, p0, Landroid/telephony/SmsManager$1;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iput-object p7, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-boolean p9, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iput-wide p10, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    # invokes: Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V
    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->access$100(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public onSuccess(I)V
    .registers 15

    # invokes: Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    invoke-static {}, Landroid/telephony/SmsManager;->access$000()Lcom/android/internal/telephony/ISms;

    move-result-object v12

    :try_start_4
    iget-object v2, p0, Landroid/telephony/SmsManager$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/SmsManager$1;->val$attributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/SmsManager$1;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$1;->val$scAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$1;->val$text:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/telephony/SmsManager$1;->val$deliveryIntent:Landroid/app/PendingIntent;

    iget-boolean v9, p0, Landroid/telephony/SmsManager$1;->val$persistMessage:Z

    iget-wide v10, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    move-object v0, v12

    move v1, p1

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_49

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTextMessageInternal: Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/telephony/SmsManager$1;->val$messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/SmsManager$1;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x1f

    # invokes: Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V
    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->access$100(Landroid/app/PendingIntent;I)V

    :goto_49
    return-void
.end method
