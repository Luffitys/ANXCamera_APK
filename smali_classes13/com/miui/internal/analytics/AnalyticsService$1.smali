.class Lcom/miui/internal/analytics/AnalyticsService$1;
.super Lcom/miui/internal/analytics/IAnalytics$Stub;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/AnalyticsService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-direct {p0}, Lcom/miui/internal/analytics/IAnalytics$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public track([Lcom/miui/internal/analytics/Event;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/AnalyticsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2b

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_28

    invoke-virtual {v0, v5}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2b
    return-void
.end method
