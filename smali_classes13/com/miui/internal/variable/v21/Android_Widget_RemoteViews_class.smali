.class public Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;
.super Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;
.source "Android_Widget_RemoteViews_class.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    const-string v0, "getContextForResources"

    const-string v1, "(Landroid/content/Context;)Landroid/content/Context;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->handleGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method protected handleGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;
    .registers 9

    move-object v0, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->originalGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget v2, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->REMOTE_VIEWS_TEMPLATE_THEME:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    :cond_1a
    return-object v1
.end method

.method protected originalGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_Widget_RemoteViews_class.originalGetContextForResources(long, RemoteViews, Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
