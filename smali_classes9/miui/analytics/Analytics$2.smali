.class Lmiui/analytics/Analytics$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lmiui/analytics/Analytics;

.field final synthetic val$allEvents:[Lcom/miui/internal/analytics/Event;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/analytics/Analytics;[Lcom/miui/internal/analytics/Event;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmiui/analytics/Analytics$2;->this$0:Lmiui/analytics/Analytics;

    iput-object p2, p0, Lmiui/analytics/Analytics$2;->val$allEvents:[Lcom/miui/internal/analytics/Event;

    iput-object p3, p0, Lmiui/analytics/Analytics$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/miui/internal/analytics/IAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/analytics/IAnalytics;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lmiui/analytics/Analytics$2;->val$allEvents:[Lcom/miui/internal/analytics/Event;

    invoke-interface {p1, p2}, Lcom/miui/internal/analytics/IAnalytics;->track([Lcom/miui/internal/analytics/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Analytics"

    const-string v0, "endSession() remote exception caught"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lmiui/analytics/Analytics$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
