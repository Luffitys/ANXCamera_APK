.class public Lcom/miui/internal/component/plugin/PluginResourceLoader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/component/plugin/PluginLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/Class;)Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/component/plugin/PluginResourceLoader;->lookup(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public lookup(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getPlugins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/component/plugin/Plugin;

    iget-object p0, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {p0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "more than one plugin found for extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no plugin found for extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
