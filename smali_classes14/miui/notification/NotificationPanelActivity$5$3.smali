.class Lmiui/notification/NotificationPanelActivity$5$3;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/notification/NotificationPanelActivity$5;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity$5;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5$3;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$5$3;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    # invokes: Lmiui/notification/NotificationPanelActivity;->closeAnimation()V
    invoke-static {v0}, Lmiui/notification/NotificationPanelActivity;->access$300(Lmiui/notification/NotificationPanelActivity;)V

    return-void
.end method
