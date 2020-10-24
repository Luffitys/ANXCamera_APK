.class public Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;
.super Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    const-string v0, "getContextForResources"

    const-string v1, "(Landroid/content/Context;)Landroid/content/Context;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->handleGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method protected handleGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v21/Android_Widget_RemoteViews_class;->originalGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eq p4, p0, :cond_0

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;->REMOTE_VIEWS_TEMPLATE_THEME:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    return-object p0
.end method

.method protected originalGetContextForResources(JLandroid/widget/RemoteViews;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v21.Android_Widget_RemoteViews_class.originalGetContextForResources(long, RemoteViews, Context)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
