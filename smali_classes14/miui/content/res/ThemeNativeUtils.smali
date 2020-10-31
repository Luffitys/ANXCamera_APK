.class public Lmiui/content/res/ThemeNativeUtils;
.super Ljava/lang/Object;
.source "ThemeNativeUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "themeutils_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lmiui/theme/ThemeFileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteContents(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/theme/ThemeFileUtils;->deleteContents(Ljava/lang/String;)V

    return-void
.end method

.method public static isContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z
    .registers 2

    invoke-static {p0}, Lmiui/content/res/ThemeNativeUtils;->nIsContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z

    move-result v0

    return v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/theme/ThemeFileUtils;->link(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/theme/ThemeFileUtils;->mkdirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nIsContainXXXhdpiResource(Landroid/content/res/AssetManager;)Z
.end method

.method private static native nTerminateAtlas()V
.end method

.method public static remove(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static terminateAtlas()V
    .registers 0

    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->nTerminateAtlas()V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/theme/ThemeFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
