.class Lmiui/drm/ThemeReceiver$ValidateThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/ThemeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lmiui/drm/ThemeReceiver;


# direct methods
.method public constructor <init>(Lmiui/drm/ThemeReceiver;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9

    const-string v0, "drm"

    :try_start_2
    # getter for: Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;
    invoke-static {}, Lmiui/drm/ThemeReceiver;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    iget-object v4, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    # invokes: Lmiui/drm/ThemeReceiver;->validateTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5, v6}, Lmiui/drm/ThemeReceiver;->access$100(Lmiui/drm/ThemeReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore default theme in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiui/content/res/ThemeRuntimeManager;

    iget-object v3, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lmiui/content/res/ThemeRuntimeManager;->restoreDefault()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_57

    goto :goto_56

    :cond_55
    goto :goto_e

    :cond_56
    :goto_56
    goto :goto_73

    :catch_57
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check theme drm occur exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_73
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->this$0:Lmiui/drm/ThemeReceiver;

    const/4 v1, 0x0

    # setter for: Lmiui/drm/ThemeReceiver;->mIsValidating:Z
    invoke-static {v0, v1}, Lmiui/drm/ThemeReceiver;->access$202(Lmiui/drm/ThemeReceiver;Z)Z

    return-void
.end method
