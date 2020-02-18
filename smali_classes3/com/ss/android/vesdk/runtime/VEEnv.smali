.class public Lcom/ss/android/vesdk/runtime/VEEnv;
.super Ljava/lang/Object;
.source "VEEnv.java"


# instance fields
.field private mDetectModelsDir:Ljava/lang/String;

.field private mWorkspace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectModelResourceDirPath()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    const-string v1, "vesdk_models_dir_sp_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    return-object p0
.end method

.method public prepareModels(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "models"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/bef/effectsdk/EffectSDKUtils;->flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDetectModelsDir(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    const-string v0, "vesdk_models_dir_sp_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    return-void
.end method
