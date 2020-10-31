.class Lmiui/notification/NotificationPanelActivity$NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method public constructor <init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V
    .registers 3

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2d

    :try_start_4
    sget-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    const-string v1, "NotificationClicker onClick "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->this$0:Lmiui/notification/NotificationPanelActivity;

    # invokes: Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lmiui/notification/NotificationPanelActivity;->access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V
    :try_end_15
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_2d

    :catch_16
    move-exception v0

    sget-object v1, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending contentIntent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method
