.class Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;
.super Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockscreenConfigFileHelper"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConfigPath()Ljava/lang/String;
    .registers 2

    const-string v0, "/data/system/theme/config.config"

    return-object v0
.end method

.method protected getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/constants/ResourceBrowserConstants;->MAML_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lockstyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method
