.class Lmiui/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/analytics/Analytics;->endSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/analytics/Analytics;

.field final synthetic val$allEvents:[Lcom/miui/internal/analytics/Event;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/analytics/Analytics;[Lcom/miui/internal/analytics/Event;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lmiui/analytics/Analytics$2;->this$0:Lmiui/analytics/Analytics;

    iput-object p2, p0, Lmiui/analytics/Analytics$2;->val$allEvents:[Lcom/miui/internal/analytics/Event;

    iput-object p3, p0, Lmiui/analytics/Analytics$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {p2}, Lcom/miui/internal/analytics/IAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/analytics/IAnalytics;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lmiui/analytics/Analytics$2;->val$allEvents:[Lcom/miui/internal/analytics/Event;

    invoke-interface {v0, v1}, Lcom/miui/internal/analytics/IAnalytics;->track([Lcom/miui/internal/analytics/Event;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    const-string v2, "Analytics"

    const-string v3, "endSession() remote exception caught"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    iget-object v1, p0, Lmiui/analytics/Analytics$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
