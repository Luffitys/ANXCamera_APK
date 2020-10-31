.class public Lmiui/maml/data/DarkModeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DarkModeVariableUpdater.java"


# instance fields
.field private mDarkMode:Lmiui/maml/data/IndexedVariable;

.field private mDarkWallpaperMode:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 6

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DarkModeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v2, "__darkmode"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DarkModeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v2, "__darkmode_wallpaper"

    invoke-direct {v0, v2, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 9

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_51

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    iget-object v1, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lmiui/maml/data/IndexedVariable;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_1b
    iget-object v1, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkMode:Lmiui/maml/data/IndexedVariable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :goto_24
    const/4 v1, 0x3

    and-int v4, v0, v1

    if-ne v4, v1, :cond_3a

    iget-object v2, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lmiui/maml/data/IndexedVariable;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/maml/data/DarkModeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    goto :goto_4a

    :cond_3a
    iget-object v3, p0, Lmiui/maml/data/DarkModeVariableUpdater;->mDarkWallpaperMode:Lmiui/maml/data/IndexedVariable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/maml/data/DarkModeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/maml/ScreenElementRoot;->setDarkWallpaperMode(Z)V

    :goto_4a
    invoke-virtual {p0}, Lmiui/maml/data/DarkModeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_51
    return-void
.end method
