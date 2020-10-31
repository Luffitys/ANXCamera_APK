.class public Lmiui/theme/ThemePermissionUtils;
.super Ljava/lang/Object;
.source "ThemePermissionUtils.java"


# static fields
.field private static final THEME_FILE_CONTEXT:Ljava/lang/String; = "u:object_r:theme_data_file:s0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/theme/ThemePermissionUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "/data/system/theme/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    const/16 v2, 0x1fd

    goto :goto_29

    :cond_17
    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Ljava/io/File;

    sget-object v4, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    const/16 v2, 0x1fd

    :cond_29
    :goto_29
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_ac

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto/16 :goto_ac

    :cond_46
    const/4 v4, 0x0

    const-string v5, "Theme"

    const-string v6, "u:object_r:theme_data_file:s0"

    const/4 v7, 0x1

    if-nez p1, :cond_75

    :try_start_4e
    invoke-static {p0, v6}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    if-eqz v4, :cond_57

    move v0, v7

    :cond_57
    move v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "system user update theme file: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :cond_75
    const/16 v8, 0x2649

    invoke-static {p0, v8, v8}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    move-result v8

    move v4, v8

    invoke-static {p0, v2}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_86

    if-eqz v4, :cond_86

    move v8, v7

    goto :goto_87

    :cond_86
    move v8, v0

    :goto_87
    move v4, v8

    invoke-static {p0, v6}, Landroid/miui/Shell;->setfilecon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8c} :catch_93

    if-eqz v5, :cond_91

    if-eqz v4, :cond_91

    move v0, v7

    :cond_91
    move v4, v0

    :goto_92
    goto :goto_ab

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "occur exception when updating theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ab
    return v4

    :cond_ac
    :goto_ac
    return v0
.end method
