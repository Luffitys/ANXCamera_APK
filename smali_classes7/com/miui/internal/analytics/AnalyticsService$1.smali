.class Lcom/miui/internal/analytics/AnalyticsService$1;
.super Lcom/miui/internal/analytics/IAnalytics$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/AnalyticsService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-direct {p0}, Lcom/miui/internal/analytics/IAnalytics$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public track([Lcom/miui/internal/analytics/Event;)V
    .locals 5

    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
