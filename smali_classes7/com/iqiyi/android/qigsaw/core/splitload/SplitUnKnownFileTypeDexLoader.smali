.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitUnKnownFileTypeDexLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitUnKnownFileTypeDexLoader"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "pathList"

    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "dalvik.system.DexPathList"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "loadDexFile"

    invoke-static {p1, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v6, 0x0

    :try_start_0
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object p2, v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldalvik/system/DexFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "dalvik.system.DexPathList$Element"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    :try_start_1
    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Ljava/io/File;

    aput-object v11, v10, v4

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    const-class v11, Ljava/io/File;

    aput-object v11, v10, v1

    const-class v11, Ldalvik/system/DexFile;

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v11, v8, v5

    aput-object v3, v8, v1

    aput-object v6, v8, v9

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    new-array v8, v9, [Ljava/lang/Class;

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v4

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v5

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v8, v1

    invoke-static {v7, v8}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v4

    aput-object v3, v10, v5

    aput-object v6, v10, v1

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-array v8, v9, [Ljava/lang/Class;

    const-class v10, Ljava/io/File;

    aput-object v10, v8, v4

    const-class v10, Ljava/util/zip/ZipFile;

    aput-object v10, v8, v5

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v8, v1

    invoke-static {v7, v8}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    :try_start_3
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v8, v9, v5

    aput-object v6, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open zip file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "SplitUnKnownFileTypeDexLoader"

    invoke-static {v8, v6, v3, v7}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    instance-of v6, v3, Ljava/io/IOException;

    if-eqz v6, :cond_2

    goto/16 :goto_1

    :cond_2
    throw v3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "dexElements"

    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
