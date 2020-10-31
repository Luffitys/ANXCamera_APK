.class Lmiui/notification/NotificationPanelActivity$1;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;

.field final synthetic val$clearIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V
    .registers 3

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$1;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_15

    :try_start_4
    sget-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    const-string v1, "NotificationClicker clear "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_10
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_15
    :goto_15
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    # invokes: Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lmiui/notification/NotificationPanelActivity;->access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V

    return-void
.end method
