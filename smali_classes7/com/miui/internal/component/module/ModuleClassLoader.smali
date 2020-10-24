.class public Lcom/miui/internal/component/module/ModuleClassLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEX_ELEMENTS_FIELD_NAME:Ljava/lang/String; = "dexElements"

.field private static final DEX_PATH_LIST_CLASS_NAME:Ljava/lang/String; = "dalvik.system.DexPathList"

.field private static final DEX_PATH_LIST_ELEMENT_CLASS_NAME:Ljava/lang/String; = "dalvik.system.DexPathList$Element"

.field private static final DEX_PATH_LIST_NATIVE_ELEMENT_CLASS_NAME:Ljava/lang/String; = "dalvik.system.DexPathList$NativeLibraryElement"

.field private static final LIB_ELEMENTS_FIELD_NAME:Ljava/lang/String; = "nativeLibraryPathElements"

.field private static final TAG:Ljava/lang/String; = "ModuleClassLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_1

    const-class v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "dalvik.system.DexPathList"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string v0, "dexPathList field not found."

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " field not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/io/File;

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string v0, "nativeLibraryDirectories field not found."

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invokeAddDexPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "addDexPath"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "addDexPath method not found."

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invokeAddNativePath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Collection;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "addNativePath"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "addNativePath method not found."

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/internal/component/module/ModuleClassLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ModuleClassLoader"

    const/4 v2, 0x0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    return v2

    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez p0, :cond_3

    const/16 p1, 0x17

    if-ge v0, p1, :cond_2

    invoke-static {v3, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 p4, 0x0

    goto :goto_0

    :cond_3
    move-object p4, p1

    move-object p1, p0

    :goto_0
    const/16 v5, 0x1c

    if-ge v0, v5, :cond_6

    if-nez p4, :cond_4

    new-instance p4, Ldalvik/system/PathClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {v0, p1, p4, p2, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object p4, v0

    :goto_1
    invoke-static {p4}, Lcom/miui/internal/component/module/ModuleClassLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_5

    invoke-static {v3, p1}, Lcom/miui/internal/component/module/ModuleClassLoader;->loadDex(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    if-eqz p2, :cond_8

    invoke-static {v3, p1, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->loadLibrary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p3, p1}, Lcom/miui/internal/component/module/ModuleClassLoader;->invokeAddDexPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p3, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->invokeAddNativePath(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return v4

    :catch_0
    move-exception p0

    const-string p1, "Invocation target"

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "no method found"

    goto :goto_3

    :catch_2
    move-exception p0

    const-string p1, "No field found"

    goto :goto_3

    :catch_3
    move-exception p0

    const-string p1, "No class found"

    goto :goto_3

    :catch_4
    move-exception p0

    const-string p1, "Illegal access"

    goto :goto_3

    :catch_5
    move-exception p0

    const-string p1, "Illegal arguments"

    :goto_3
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private static loadDex(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "dexElements"

    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {p0, p1, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleClassLoader;->getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v2, p1

    array-length v4, v1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static loadLibrary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "nativeLibraryPathElements"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const-string p2, "dalvik.system.DexPathList$NativeLibraryElement"

    :goto_0
    invoke-static {p0, p1, v1, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string p2, "dalvik.system.DexPathList$Element"

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/miui/internal/component/module/ModuleClassLoader;->loadLibBeforeAndroidM(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static replaceElement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p2, p3}, Lcom/miui/internal/component/module/ModuleClassLoader;->getElementsField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    aput-object p1, p3, v1

    array-length p1, v0

    invoke-static {v0, v1, p3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
