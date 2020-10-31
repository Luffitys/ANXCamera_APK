.class public abstract Lcom/miui/internal/component/module/LocalRepository;
.super Lmiui/module/Repository;
.source "LocalRepository.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createSymlink(Ljava/io/File;Ljava/io/File;)Z
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "symlink"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    return v3

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/module/LocalRepository;->getRootFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/component/module/LocalRepository;->getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/module/LocalRepository;->getRootFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/component/module/LocalRepository;->getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/module/LocalRepository;->createSymlink(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected abstract getRootFolder(Landroid/content/Context;)Ljava/io/File;
.end method
