.class public Lmiui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;
    .registers 11

    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;

    move-result-object v2

    # getter for: Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;
    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_31

    if-eqz v3, :cond_31

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_31

    new-instance v4, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v4, v3}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v2

    :cond_31
    if-nez v2, :cond_34

    return-object v1

    :cond_34
    new-instance v1, Lmiui/maml/LifecycleResourceManager;

    const-wide/32 v6, 0x36ee80

    const-wide/32 v8, 0x57e40

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    new-instance v4, Lmiui/maml/ScreenContext;

    invoke-direct {v4, v0, v1}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    new-instance v5, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v5, v4}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    return-object v5

    :cond_4c
    throw v1
.end method
